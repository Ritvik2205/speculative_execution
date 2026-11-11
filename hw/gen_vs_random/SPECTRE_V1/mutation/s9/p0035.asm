.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
lea ebx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
sub eax, -882981501
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
add cl, 0 # instrumentation
adc dl, bl
mov al, cl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
test rax, -1638758413
lea rdx, qword ptr [rcx + rdx + 44106]
or al, dl
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
or rdi, rcx
and ecx, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
