/*
  ==============================================================================

   This file is part of the JUCE 8 technical preview.
   Copyright (c) Raw Material Software Limited

   You may use this code under the terms of the GPL v3
   (see www.gnu.org/licenses).

   For the technical preview this file cannot be licensed commercially.

   JUCE IS PROVIDED "AS IS" WITHOUT ANY WARRANTY, AND ALL WARRANTIES, WHETHER
   EXPRESSED OR IMPLIED, INCLUDING MERCHANTABILITY AND FITNESS FOR PURPOSE, ARE
   DISCLAIMED.

  ==============================================================================
*/
namespace juce
{

#if JUCE_MAC
void Process::setDockIconVisible (bool isVisible)
{
    ProcessSerialNumber psn { 0, kCurrentProcess };

    [[maybe_unused]] OSStatus err = TransformProcessType (&psn, isVisible ? kProcessTransformToForegroundApplication
                                                                          : kProcessTransformToUIElementApplication);
    jassert (err == 0);
}
#endif

} // namespace juce