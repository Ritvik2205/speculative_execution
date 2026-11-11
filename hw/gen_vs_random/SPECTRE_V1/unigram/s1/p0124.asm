.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 37
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xchg sil, sil
mul rdi
cmp cl, al
cmp bl, bl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
cmp rdx, rax
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
