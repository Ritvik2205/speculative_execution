.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
btc rdx, rdx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
test bl, -14
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
and dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
test al, 91
btc bx, ax
bt si, ax
jmp .bb_0.1
.bb_0.1:
and sil, -35 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
and al, -86 # instrumentation
cmovns cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
xor rcx, 71
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
cmovnbe rdi, rax
not rsi
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
cmovnb ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
