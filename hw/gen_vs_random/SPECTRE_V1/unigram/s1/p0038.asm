.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setl al
adc cl, -19
xchg eax, edx
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
bts rbx, 78
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
bt bx, si
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 81
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
lea ecx, qword ptr [rbx + rcx + 13259]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
