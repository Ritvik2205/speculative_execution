.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 44
inc di
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edi
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 89
add cl, 22 # instrumentation
cmovns rdx, rax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rbx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
lea rbx, qword ptr [rbx]
add cl, 75 # instrumentation
sbb al, cl
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 97
setno bl
lea cx, qword ptr [rdx + rdx + 77]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdi
lea rsi, qword ptr [rdi + rax + 14]
adc al, 32
add bl, -108 # instrumentation
sbb dl, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
