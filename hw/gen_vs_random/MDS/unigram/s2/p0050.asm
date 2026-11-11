.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 37
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and sil, sil
cmovl edi, edi
bt si, 23
bts dx, 50
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
btr di, 89
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 17
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
cmovnp rsi, rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
or sil, -49
or al, 74
xor dl, 40
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
cmovnz di, ax
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
and dl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
