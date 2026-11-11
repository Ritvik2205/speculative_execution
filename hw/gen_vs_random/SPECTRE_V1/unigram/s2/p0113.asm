.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rbx + rax + 62]
imul eax
neg esi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], si
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 34
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rax
mul dil
bt bx, ax
cmovz edx, edi
lea dx, qword ptr [rdx + rbx]
mov al, bl
add cl, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rcx]
or cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
