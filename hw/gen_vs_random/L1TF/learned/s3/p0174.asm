.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
lea ecx, qword ptr [rax + rsi]
setb bl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
adc al, -3
add sil, -111
add rdx, rax
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
cmp rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 30
lea ecx, qword ptr [rdi + rdx + 72]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
