.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rbx]
sub dil, cl
lea rdi, qword ptr [rax + rcx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc sil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
cmp dl, bl
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and cl, 55
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
