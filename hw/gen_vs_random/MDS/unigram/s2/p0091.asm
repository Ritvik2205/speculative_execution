.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rdx, rdx
cmovo si, si
xor edi, 74
and sil, 65
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 33
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
or rsi, 8
or rbx, -124
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
cmovnle edi, esi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
cmovs edx, edx
bts rdi, 75
and dl, -73 # instrumentation
cmovns rax, rdx
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
or rsi, 57
or rax, rdx
and bl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
cmovp bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
