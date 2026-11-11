.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
or edx, eax
or dl, bl
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
sub eax, 132782095
lea ebx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and ecx, -38
lea rdx, qword ptr [rcx + rdx + 44106]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
or rdi, rcx
test rax, -866236703
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or al, dl
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
