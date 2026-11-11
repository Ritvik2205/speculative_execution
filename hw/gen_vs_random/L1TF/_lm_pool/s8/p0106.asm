.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
or al, -48
and esi, 88
and cx, -79
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rdi]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and sil, 93
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or dil, -113
lea si, qword ptr [rcx + rsi + 26]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
