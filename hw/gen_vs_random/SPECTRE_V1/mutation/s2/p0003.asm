.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
or edx, eax
sub eax, -911655926
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
lea ebx, qword ptr [rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rcx + rdx + 44106]
and ecx, -38
or rdi, rcx
test rax, -1638758413
or al, dl
mov al, cl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
add cl, 0 # instrumentation
adc dl, bl
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
