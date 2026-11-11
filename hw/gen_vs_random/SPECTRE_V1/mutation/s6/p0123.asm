.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
lea ebx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
sub eax, -882981501
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or al, dl
test rax, -1638758413
and ecx, -38
add cl, 0 # instrumentation
adc dl, bl
or rdi, rcx
lea rdx, qword ptr [rcx + rdx + 44106]
mov al, cl
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
