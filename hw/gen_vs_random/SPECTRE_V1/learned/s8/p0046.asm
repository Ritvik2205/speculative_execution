.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, al
lea edi, qword ptr [rcx]
lea rbx, qword ptr [rax + rsi + 13]
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
xchg cl, sil
add dil, dil
sbb esi, 9
sub cl, al
sbb sil, dil
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
