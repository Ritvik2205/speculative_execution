.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
sub dil, -32
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
sbb al, al
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
test rax, 1469613902
cmp di, si
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
sbb dl, 127
cmovo ax, dx
adc cl, -19
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
movsx rcx, bx
setns bl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
