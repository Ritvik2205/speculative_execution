.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
mov dil, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub di, 14
and bl, sil
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
cmovl rcx, rcx
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
sbb ecx, 53
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
