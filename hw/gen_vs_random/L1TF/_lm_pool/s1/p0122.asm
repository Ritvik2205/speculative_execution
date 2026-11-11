.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
lea rax, qword ptr [rbx + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
lea esi, qword ptr [rdx]
bts ecx, 225
xor rsi, 83
sub al, 9
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 27
dec ecx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
