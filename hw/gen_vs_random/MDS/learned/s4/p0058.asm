.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8
xor cl, 15
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
xor bl, 67
or al, -58
test dil, bl
xor sil, -15
test eax, -675944960
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test cl, 54
and cl, -111
jmp .bb_0.2
.bb_0.2:
cmovnp rax, rsi
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
