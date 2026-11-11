.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, -81
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], -50
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xchg cl, cl
test al, -82
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
sbb ebx, edx
bts ecx, 225
lea rax, qword ptr [rbx]
movzx edx, dx
xchg dil, bl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
btc bx, 173
mul rdx
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
test dl, dl
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
test ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
