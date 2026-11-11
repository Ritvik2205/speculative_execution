.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edi, 23
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 29
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
test rbx, 35
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
bt rax, 96
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
or rdx, -109
bt ecx, 56
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
or sil, -49
or dil, dil
cmovb rdx, rax
cmovnb edi, ecx
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
