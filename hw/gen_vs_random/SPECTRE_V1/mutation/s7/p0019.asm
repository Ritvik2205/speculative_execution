.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1716718453
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -88
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
xor al, -89
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
add cl, al
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 115 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
cmovbe di, dx
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and bl, dl
btc rsi, rax
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
add bl, 104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
movsx rsi, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
