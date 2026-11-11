.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -12492
test al, sil
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rdi, 60
xor al, 115
and al, -54
xor dil, 81
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or bl, cl
test cl, 62
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
