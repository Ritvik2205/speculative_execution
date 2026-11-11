.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and cl, 11 # instrumentation
cmovp ebx, edi
btr edx, esi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
xor al, 9
cmovb rdi, rax
test al, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
xor rsi, -117
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
xor dx, bx
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
bts rsi, 205
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
