.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -76 # instrumentation
adc dil, -27
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or dl, al
lea ebx, qword ptr [rax + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
add bl, -12 # instrumentation
lea rsi, qword ptr [rdi + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
add al, -25 # instrumentation
sbb cx, di
or eax, -126
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bt di, 157
adc eax, -655457029
cmovns rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
imul al
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
