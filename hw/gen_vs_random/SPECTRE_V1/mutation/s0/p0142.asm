.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -21522
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
cmovnbe si, si
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
mov bl, 59
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 63 # instrumentation
cmovl dx, di
sbb ecx, -1
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
xor cl, -103
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
