.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe si, ax
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
cmovb rdx, rcx
test rdx, 92
cmovns ax, bx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
test ax, cx
and al, 70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 27
test cx, 401
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bts rax, 77
not rcx
btc rdi, 221
bts ax, 22
btr si, ax
and al, 6 # instrumentation
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
and cl, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
cmovnb esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
