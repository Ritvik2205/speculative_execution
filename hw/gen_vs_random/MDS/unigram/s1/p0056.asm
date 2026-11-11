.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno bx, bx
btc di, 233
or eax, eax
or cl, bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and rbx, rcx
test cl, 54
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 88
and cl, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
cmovb bx, dx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
btr ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
