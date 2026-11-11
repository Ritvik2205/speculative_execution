.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
btc bx, 168
bts rdx, rbx
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
cmp dx, 66
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
cmp cl, -71
cmovp ax, si
sub rdx, 12
add sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
