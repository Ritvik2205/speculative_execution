.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
sub rdi, 22
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
lea eax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
