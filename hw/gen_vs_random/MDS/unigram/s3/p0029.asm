.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 97 # instrumentation
cmovnp si, cx
and bl, 109 # instrumentation
cmovs ax, dx
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
xor rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
btr eax, 51
and rdx, rbx
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
jmp .bb_0.1
.bb_0.1:
cmovno rax, rbx
btc edx, edx
xor rsi, -117
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
btr di, 89
test cl, bl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
btr edx, esi
or dl, 51
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
