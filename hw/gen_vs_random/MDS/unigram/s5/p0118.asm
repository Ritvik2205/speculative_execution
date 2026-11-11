.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
bt rbx, rbx
and dil, sil
and cl, 78 # instrumentation
cmovs cx, dx
bts bx, 3
or cl, -36
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
xor rdi, rsi
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edi
and dl, 60 # instrumentation
cmovnl ebx, eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
xor dl, 40
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
cmovns ax, bx
btc rsi, 105
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], ax
or si, -12
xor sil, sil
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
