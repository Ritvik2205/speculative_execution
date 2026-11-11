.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
lea rdi, qword ptr [rdx + rax + 72]
setnz cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 20
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 19
or bl, 30
lea rdi, qword ptr [rcx + rax + 86]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
add dl, dl
lea esi, qword ptr [rcx]
neg eax
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setnl dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
