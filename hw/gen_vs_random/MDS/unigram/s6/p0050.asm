.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmovno rsi, rax
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 71
jmp .bb_0.1
.bb_0.1:
or bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
cmovnl rsi, rdx
xor bl, -61
or dl, -97
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
and dil, -39
btr bx, 100
cmovnz si, bx
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
btc dx, ax
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
