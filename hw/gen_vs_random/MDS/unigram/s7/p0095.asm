.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns eax, esi
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
or dl, dil
test al, 91
bt ax, 76
and cl, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
or sil, -49
cmovno rsi, rsi
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
test rbx, rdx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
and bl, 108 # instrumentation
cmovns rbx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and sil, sil
btc rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
