.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
or edx, eax
sub eax, -882981501
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
lea ebx, qword ptr [rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or al, dl
add cl, 0 # instrumentation
adc dl, bl
test rax, 1469613902
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
lea rdx, qword ptr [rcx + rdx + 44106]
mov al, cl
or rdi, rcx
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and ecx, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
