.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 118 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
cmovnle edi, ebx
sbb bl, cl
xor eax, -105
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 1
sbb eax, -417098439
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
adc dx, -112
neg ecx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
neg sil
test cl, -62
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
