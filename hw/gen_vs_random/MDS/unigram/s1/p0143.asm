.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and bl, al
or dil, -52
cmovb rbx, rdi
test sil, 16
btc rsi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
cmovnz ebx, esi
bts rdx, 255
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
btc rcx, rax
bt ax, di
xor eax, 1170472196
cmovns rdx, rcx
and esi, 55
cmovle edx, ebx
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
cmovb eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
