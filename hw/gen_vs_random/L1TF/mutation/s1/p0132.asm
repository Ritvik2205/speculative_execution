.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and bl, 89
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add al, -95 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
sub edi, 56
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
imul al
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], cl
dec edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
