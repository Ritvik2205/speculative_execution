.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
xor edx, 2
and sil, -94
or si, 22
and al, -56 # instrumentation
cmovl rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 72
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
or sil, dil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 11
test edx, 95
or rdi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rsi, 70
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
xor dl, -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
