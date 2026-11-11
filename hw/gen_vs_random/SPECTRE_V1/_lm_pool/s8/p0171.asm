.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
and sil, bl
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 51
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
mov bl, cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
