.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
xor dl, 34
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
test bl, dl
cmovns rbx, rdx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and bl, dl
cmovl ebx, edi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
bt ax, si
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and bx, 13
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
