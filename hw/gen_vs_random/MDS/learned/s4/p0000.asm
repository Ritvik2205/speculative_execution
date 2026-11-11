.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 22
xor ax, 2053
xor rbx, -51
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
btc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
xor ax, 24729
cmovl rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
cmovnl esi, edi
or bl, -98
jmp .bb_0.1
.bb_0.1:
bts rax, 117
and bl, 72
xor al, sil
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
xor eax, 1170472196
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
