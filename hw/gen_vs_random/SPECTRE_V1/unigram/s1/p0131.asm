.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, -18
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
cbw
add bl, 36 # instrumentation
setnl dil
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
lea rcx, qword ptr [rdi + rax + 13]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 13
sub rax, -132886581
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
sbb al, sil
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
add dil, 99 # instrumentation
sets dil
movsx ebx, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
