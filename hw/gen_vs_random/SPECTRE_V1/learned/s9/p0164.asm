.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
sbb dil, -93
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi], 53
lea rdx, qword ptr [rdi + rdi + 70]
cmovns rdi, rbx
and al, cl
setno cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
bt bx, 83
and al, cl
add cl, -127
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
