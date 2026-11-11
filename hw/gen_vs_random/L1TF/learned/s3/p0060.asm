.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
jmp .bb_0.1
.bb_0.1:
and sil, dl
add ax, -10746
test bl, 45
xor cl, dil
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
movsx esi, sil
xor ecx, 9
cmovb cx, ax
jmp .bb_0.3
.bb_0.3:
add sil, -61
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
