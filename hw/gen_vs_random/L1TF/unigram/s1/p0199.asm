.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bx, cx
cmp ax, cx
sub eax, 2
add cl, dil
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
imul di, si
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and bl, bl
jmp .bb_0.1
.bb_0.1:
add dil, -49 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
dec al
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
xor al, bl
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
or cx, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
