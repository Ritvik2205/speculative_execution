.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
sbb dil, al
and dl, 32
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and ax, 37
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
cmp al, bl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
