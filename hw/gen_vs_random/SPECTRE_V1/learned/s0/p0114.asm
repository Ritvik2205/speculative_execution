.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
cmp edx, 44
cmp di, 40
adc cl, -19
setnb cl
adc eax, 56
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
