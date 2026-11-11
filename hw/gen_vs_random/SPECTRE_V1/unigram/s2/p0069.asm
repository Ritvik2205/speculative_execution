.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 85
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
sub esi, -120
add cl, cl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 49
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rax]
inc dl
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
add bl, 99 # instrumentation
sets bl
and rcx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setbe bl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 9
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
test edx, ebx
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
