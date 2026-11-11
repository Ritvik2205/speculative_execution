.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
or dl, -31
cmovnbe ecx, edi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
cmovnp rsi, rax
or rbx, -77
cmovnp rcx, rax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 37
cmovnb cx, si
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
bts rbx, 115
or ebx, -104
test dl, 48
or sil, -49
and cl, 8 # instrumentation
cmovnl rcx, rax
xor sil, -15
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
btc si, cx
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
