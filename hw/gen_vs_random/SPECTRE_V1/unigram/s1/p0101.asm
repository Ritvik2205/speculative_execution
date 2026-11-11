.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdx, 38
sbb edi, 95
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 64
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
cmovnbe rcx, rsi
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
imul bl
adc cl, -18
lea di, qword ptr [rdx]
add cl, -123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
