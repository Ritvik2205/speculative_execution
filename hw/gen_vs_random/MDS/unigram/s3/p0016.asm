.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and bl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
cmovnz ecx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
xor ebx, 25
cmovb bx, bx
cmovs bx, dx
or edx, esi
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
or dl, dil
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
test cl, -113
and bl, -28 # instrumentation
cmovl rdi, rdx
or rdi, -11
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
xor dl, dil
and sil, -53 # instrumentation
cmovbe ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
