.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
sub cl, 86
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 13
cmp cl, cl
cwd
btc ax, di
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
lea ebx, qword ptr [rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
add rcx, 75
and cl, dl
lea cx, qword ptr [rsi + rsi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
