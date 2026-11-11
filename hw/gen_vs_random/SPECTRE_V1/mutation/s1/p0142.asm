.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
lea ecx, qword ptr [rcx + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
lea rcx, qword ptr [rbx + rbx + 11064]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
inc dl
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
jnle .bb_0.1
jmp .bb_0.2
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
test cl, -24
cbw
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
sbb rax, 786640702
xor cl, bl
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], -45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
