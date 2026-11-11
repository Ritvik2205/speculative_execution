.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
add bl, 60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
lea rcx, qword ptr [rbx + rbx + 11064]
lea ecx, qword ptr [rcx + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
cbw
adc dx, -112
test cl, -33
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
neg ecx
neg sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
