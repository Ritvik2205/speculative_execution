.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
add dx, -51
lea rcx, qword ptr [rax + rax]
adc bl, 28
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dil
mov sil, dil
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 24
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 97
mov rax, -6437636498926413678
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
adc bl, sil
add cl, -84 # instrumentation
xchg rax, rbx
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 99
add sil, -117 # instrumentation
lea rax, qword ptr [rsi]
mov sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
