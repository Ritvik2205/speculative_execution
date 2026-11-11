.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
adc dl, 107
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea rdx, qword ptr [rdi + rbx + 97]
add cl, sil
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
lea rsi, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
jb .bb_0.3
jmp .exit_0
.bb_0.3:
lea si, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
