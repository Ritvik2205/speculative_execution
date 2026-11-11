.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
cmp rax, 108211639
xor rdx, 122
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
test bx, 41
adc al, cl
lea di, qword ptr [rax + rbx + 90]
sub al, cl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
