.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rcx + rcx + 7]
and dil, 98
add sil, -47 # instrumentation
setbe sil
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
cmp bl, -114
setp bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -82
bts rdi, 19
and rbx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
bt di, 157
adc dx, -112
test cl, bl
lea edx, qword ptr [rax]
add cl, 69 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
