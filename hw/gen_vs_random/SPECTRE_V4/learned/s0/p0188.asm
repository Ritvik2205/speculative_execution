.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, -43
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
cmp al, sil
xchg ebx, edx
or bl, bl
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
or dl, 71
cmovnz ebx, edi
xor ax, dx
cmp eax, 512128713
xor dil, bl
or al, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
