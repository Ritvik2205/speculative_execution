.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
add al, -65
and rax, -273199823
sbb dil, -106
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], al
or cl, -98
sub al, dil
or al, 19
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and al, 33
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
