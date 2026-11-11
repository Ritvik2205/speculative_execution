.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmovnp rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and dil, bl
or edx, -78
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 71
xor dx, 46
and bl, al
or ax, ax
xor cl, 15
test dl, sil
jmp .bb_0.1
.bb_0.1:
and bl, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
xor dil, 8
or rdx, -109
cmovnl edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
test al, al
cmovnl esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
