.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
xor bl, cl
jmp .bb_0.1
.bb_0.1:
btc cx, 104
btc dx, 38
jmp .bb_0.2
.bb_0.2:
and dx, 74
or dl, dil
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 96
or cl, bl
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
cmovnp rsi, rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
or rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
cmovns eax, eax
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
