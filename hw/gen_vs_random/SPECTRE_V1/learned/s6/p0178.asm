.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
and cl, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
add di, 44
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 59
lea ax, qword ptr [rbx + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
sub al, bl
lea bx, qword ptr [rdx + rbx + 80]
sub al, -82
lea rcx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
