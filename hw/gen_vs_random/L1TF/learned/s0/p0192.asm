.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
lea ecx, qword ptr [rax + rsi]
setb bl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
adc al, 36
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, -111
dec bl
sbb rax, -1477844571
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
cmovnbe rdi, rcx
cmovns edx, edi
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
or rax, 1447934463
test rax, -866236703
sub rbx, rdi
sub cl, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
