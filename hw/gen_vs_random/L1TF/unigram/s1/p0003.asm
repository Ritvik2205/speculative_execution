.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
cmp al, bl
cmovnbe ax, bx
adc dl, dl
xor ecx, eax
cmovnl si, si
cmovnbe si, si
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
btc dx, 42
setz cl
or cl, 63
cmp rsi, rdx
and eax, -1143711697
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
