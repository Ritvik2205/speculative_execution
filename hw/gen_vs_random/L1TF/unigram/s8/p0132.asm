.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rcx, 3
cmovnz rcx, rax
adc si, ax
imul si, ax
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
imul ax, cx
or cl, cl
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
cwd
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
cmp edi, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
