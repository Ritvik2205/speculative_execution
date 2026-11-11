.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
cmp ecx, 37
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 85
xor sil, sil
sub cl, -21
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
cmp dl, 71
mov bl, -31
lea bx, qword ptr [rsi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
