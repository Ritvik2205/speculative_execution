.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
lea ax, qword ptr [rax]
add al, -74 # instrumentation
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
movsx edx, dl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
cmp dil, cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
add bl, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 15
sbb ecx, 93
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 74
seto sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
