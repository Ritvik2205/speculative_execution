.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
cmp rsi, 53
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
sbb ebx, 47
sub cl, dil
sbb sil, dl
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub sil, dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
