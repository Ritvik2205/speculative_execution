.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, ax
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
test cl, dl
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
xor dl, cl
or al, 54
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and al, 14
xor dil, 124
and esi, 79
test dil, 46
xor dl, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
