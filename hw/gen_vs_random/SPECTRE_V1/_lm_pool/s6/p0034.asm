.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
mov dil, dl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
cmp ax, 7452
xchg dl, cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rbx
lea cx, qword ptr [rdx]
cmp al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
