.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rbx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
imul ebx, edi, 3
mul cx
sub cl, -21
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 86
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
cmp ax, 7452
and rdi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdi]
dec cx
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
sub edx, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
