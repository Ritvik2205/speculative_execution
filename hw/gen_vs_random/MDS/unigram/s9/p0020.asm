.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp dx, di
btc ax, 39
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and sil, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
or dl, 85
xor di, 93
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 62
bts ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
cmovp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and cl, -71
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 76
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
cmovnz rax, rsi
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
