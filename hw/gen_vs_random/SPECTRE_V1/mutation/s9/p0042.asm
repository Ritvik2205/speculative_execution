.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
inc dl
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
lea rcx, qword ptr [rbx + rbx + 11064]
lea ecx, qword ptr [rcx + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -120
adc dx, -112
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
cbw
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
neg ecx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
neg sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
