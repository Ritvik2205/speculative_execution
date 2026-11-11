.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -18
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
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
cmovnb bx, ax
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
bt dx, 80
and al, -115 # instrumentation
cmovl bx, ax
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmovbe ax, bx
cmovs rdi, rcx
cmovz cx, ax
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
