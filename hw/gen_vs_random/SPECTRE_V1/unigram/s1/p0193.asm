.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, 71
lea bx, qword ptr [rax]
not cx
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
add edi, -91
cdq
cmovs rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bts ax, 21
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
cmovnle dx, ax
sub al, bl
cmp sil, 25
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
