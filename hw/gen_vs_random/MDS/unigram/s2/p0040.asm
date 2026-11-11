.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 25
and rax, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
xor bl, 2
xor edx, 38
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 49
xor dl, -125
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
bts ax, di
jmp .bb_0.1
.bb_0.1:
cmovnp di, si
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 50
and dl, -7
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
or dil, dil
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
