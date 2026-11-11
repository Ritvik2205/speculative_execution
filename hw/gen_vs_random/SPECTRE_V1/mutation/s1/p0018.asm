.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
lea ebx, qword ptr [rax + rax]
add al, -25 # instrumentation
sbb cx, di
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 22
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
add bl, -12 # instrumentation
lea rsi, qword ptr [rdi + rax]
or dl, al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or eax, -126
add al, -76 # instrumentation
adc dil, -27
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx]
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -39
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
