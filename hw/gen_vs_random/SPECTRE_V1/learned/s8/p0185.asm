.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 2
lea di, qword ptr [rbx + rdx]
mov cl, bl
add al, -47
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
and rcx, -29
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
