.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
lea ebx, qword ptr [rbx]
sub eax, -911655926
or edx, eax
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
mov al, cl
add cl, 0 # instrumentation
adc dl, bl
and ecx, -38
test rax, 1469613902
or rdi, rcx
lea rdx, qword ptr [rcx + rdx + 44106]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
