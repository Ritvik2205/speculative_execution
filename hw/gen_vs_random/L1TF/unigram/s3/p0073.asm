.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
bts edx, 58
cmovno edx, edx
setnz bl
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
sbb al, cl
lea rsi, qword ptr [rsi + rdi + 14]
and eax, 1167476476
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
cmp si, 51
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
mov rax, -6437636498926413678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
