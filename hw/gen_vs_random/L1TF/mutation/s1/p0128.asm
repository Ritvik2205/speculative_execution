.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rsi + rcx + 155]
sub al, cl
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
lea rdx, qword ptr [rcx + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
movzx rcx, al
or al, cl
add dx, dx
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], eax
or cl, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
inc dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
inc rdx
or rax, -82
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
