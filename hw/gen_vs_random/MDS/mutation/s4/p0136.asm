.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
test dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or ax, -4635
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
bt ebx, 107
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
or bl, 73
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and cl, -3 # instrumentation
cmovnb cx, dx
cmovs edi, esi
cmovnz ax, si
btc dx, ax
btc dx, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
