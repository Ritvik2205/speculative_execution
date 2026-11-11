.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
lea ebx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
sub eax, -911655926
or edx, eax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
test rax, 1469613902
lea rdx, qword ptr [rcx + rdx + 44106]
or rdi, rcx
or al, dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and ecx, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
