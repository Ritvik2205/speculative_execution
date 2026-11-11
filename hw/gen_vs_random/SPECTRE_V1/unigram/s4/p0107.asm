.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 10
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 71
imul ebx, edi, 14
cmovnl edx, ebx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
add cl, -95 # instrumentation
lea cx, qword ptr [rax + rax + 43]
lea rcx, qword ptr [rsi]
inc al
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
