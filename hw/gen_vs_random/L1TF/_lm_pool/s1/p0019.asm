.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, di
add bl, 68
and dil, -22
jmp .bb_0.1
.bb_0.1:
or sil, dil
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
