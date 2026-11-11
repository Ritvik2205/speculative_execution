.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdi, si
test dil, al
lea dx, qword ptr [rcx + rsi + 53]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 89
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
lea cx, qword ptr [rbx + rdx + 34]
lea rax, qword ptr [rsi]
setns al
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
js .bb_0.1
jmp .exit_0
.bb_0.1:
imul dil
inc cl
and rdx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
cmovp edx, ebx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
lea cx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
