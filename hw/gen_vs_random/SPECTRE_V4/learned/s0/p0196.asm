.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dl
test eax, 1947430392
sub cx, di
test ax, 21107
sub cl, bl
test dl, -125
xchg bl, al
or bl, bl
and ax, 13045
cmp bl, dl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
sub dil, 65
add al, -55
cmp dil, al
adc cl, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
