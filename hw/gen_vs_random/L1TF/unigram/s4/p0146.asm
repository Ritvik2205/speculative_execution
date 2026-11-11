.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, ax
add dl, 27 # instrumentation
setnle dl
sbb ax, dx
xor al, al
sbb sil, cl
cmp eax, -234754587
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
and dil, bl
add dl, 98 # instrumentation
inc dl
add dl, 37 # instrumentation
cmovbe ax, di
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
sub bl, 15
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
