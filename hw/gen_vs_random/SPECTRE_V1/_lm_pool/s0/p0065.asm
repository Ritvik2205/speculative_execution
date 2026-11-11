.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
test bl, -8
test cl, -120
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 83
sbb dl, dil
xchg rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test rcx, rdx
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
mov cl, bl
test cl, -120
add dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
