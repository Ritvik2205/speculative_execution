.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or al, 25
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
test bl, dil
or sil, -78
test dl, 9
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or rcx, -17
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
