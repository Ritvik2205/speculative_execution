.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
add bl, 112 # instrumentation
setnbe dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 43
add al, 110
add dil, 32 # instrumentation
sbb al, dil
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
mov sil, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add dil, 40 # instrumentation
lea di, qword ptr [rbx + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
cmp rcx, 55
cmovno rdi, rbx
add cx, 16
adc al, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
