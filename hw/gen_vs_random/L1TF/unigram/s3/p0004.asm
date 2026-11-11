.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx + rax + 75]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
add bl, -37 # instrumentation
dec dil
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovb dx, bx
cmovp ax, si
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
cmovnz si, si
cmp rbx, 14
xor al, dil
adc cl, al
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 78
mul ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
