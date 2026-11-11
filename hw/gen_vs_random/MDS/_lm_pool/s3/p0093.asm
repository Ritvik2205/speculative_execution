.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, cx
or dil, -78
or sil, bl
and rax, rbx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or sil, al
xor al, bl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
test cl, dl
xor cl, 24
or al, bl
xor bx, 97
and dl, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
xor bl, -27
and dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
