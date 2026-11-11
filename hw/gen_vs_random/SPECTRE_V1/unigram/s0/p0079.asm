.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
sub di, 54
neg rbx
btr esi, ebx
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
add rbx, 17
mov rdx, 3609511260715352814
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
