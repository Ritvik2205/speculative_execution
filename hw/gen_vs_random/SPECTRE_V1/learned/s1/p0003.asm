.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
xor dil, dl
add cl, dil
or al, 19
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
or esi, -74
js .bb_0.4
jmp .exit_0
.bb_0.4:
cmp rbx, 9
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
add bl, dil
or esi, -74
lea ax, qword ptr [rbx + rsi]
cmp al, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
