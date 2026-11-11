.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
test al, 48
setb dl
test bl, -8
lea edi, qword ptr [rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
lea eax, qword ptr [rax + rsi + 52]
cmp bx, 84
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
test sil, 97
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
