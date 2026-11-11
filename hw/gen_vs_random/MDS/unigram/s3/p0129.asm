.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 41
test cx, di
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 77
and al, -38 # instrumentation
cmovnb dx, dx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
or cl, cl
test dl, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rsi
and bx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
