.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, cx
lea ecx, qword ptr [rdx + rsi]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -20
and rcx, 31
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 60
add dl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
add si, 12
movsx ax, dl
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
btc ebx, edx
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and eax, edx
sub dx, 80
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 87
lea rdx, qword ptr [rsi + rbx + 49]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
