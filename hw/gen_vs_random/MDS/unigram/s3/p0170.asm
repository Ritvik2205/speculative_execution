.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
and dil, al
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
or cl, 100
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
cmovnz di, ax
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 77
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
xor dx, cx
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 47
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
cmovnb di, di
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
xor cx, 98
xor dil, 72
cmovnl esi, eax
btr si, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
