.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
lea cx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
lea cx, qword ptr [rdx + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub di, 68
add dl, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
add cl, 112 # instrumentation
movzx esi, cl
setns bl
add cl, -35 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rbx]
setbe al
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
cmovle di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
