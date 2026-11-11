.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
lea rcx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
sub rax, -679751639
xchg rsi, rdx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
test cx, cx
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -6
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
lea ebx, qword ptr [rcx]
dec bl
and dl, -107 # instrumentation
cmovz rax, rbx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
test ecx, 729805876
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], dx
test dil, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
