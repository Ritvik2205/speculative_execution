.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
or sil, -44
jmp .bb_0.1
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
or dil, -113
add cl, bl
or rdx, 11
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
