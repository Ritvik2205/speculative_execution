.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, edi
sub bl, -96
xor ax, 32760
jmp .bb_0.1
.bb_0.1:
setno sil
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
lea eax, qword ptr [rdx]
or cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
and dl, cl
and ax, 37
add dil, bl
xor al, 38
xor ax, -16232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
