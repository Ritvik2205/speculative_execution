.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
sub eax, -911655926
or edx, eax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
test rax, -1638758413
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
or al, dl
and ecx, -38
or rdi, rcx
mov al, cl
add cl, 0 # instrumentation
adc dl, bl
lea rdx, qword ptr [rcx + rdx + 44106]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
