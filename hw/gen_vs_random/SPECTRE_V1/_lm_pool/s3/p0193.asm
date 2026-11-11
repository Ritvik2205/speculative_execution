.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
sub cl, al
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
lea rcx, qword ptr [rbx]
lea dx, qword ptr [rcx + rdi + 45005]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
sbb cl, al
sub al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
lea rsi, qword ptr [rax + rcx + 78]
neg rax
lea rax, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
