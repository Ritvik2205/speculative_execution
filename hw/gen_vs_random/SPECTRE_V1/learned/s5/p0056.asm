.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
lea rdx, qword ptr [rax + rdi + 59]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
cmp bl, sil
sbb dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
