.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
bswap rax
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
bts bx, 65
lea ecx, qword ptr [rsi + rdx]
and rsi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rsi]
mov al, bl
lea edi, qword ptr [rdx + rax]
jmp .bb_0.1
.bb_0.1:
btc rdx, 37
and al, -115 # instrumentation
cmovl bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
