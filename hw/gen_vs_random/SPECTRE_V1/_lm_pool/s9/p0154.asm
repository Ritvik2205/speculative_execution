.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
lea di, qword ptr [rbx + rcx]
sub al, -82
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rax + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
cmp cl, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
