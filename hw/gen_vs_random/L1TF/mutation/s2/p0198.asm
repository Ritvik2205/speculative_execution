.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rsi + rdx]
xor cl, cl
lea ax, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
or bl, -88
cmp al, 56
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
lea ebx, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
sub edi, 27
imul al
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], cl
dec edx
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
