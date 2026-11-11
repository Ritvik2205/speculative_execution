.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
xor cl, dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
test cl, 54
test dl, dil
xor dl, cl
test cl, -86
test sil, -55
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
or al, 25
test eax, 158941032
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
xor ax, 31969
and cl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
