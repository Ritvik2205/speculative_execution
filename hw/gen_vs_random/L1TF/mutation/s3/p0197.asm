.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
add rdx, rax
adc al, -3
setb bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
lea ecx, qword ptr [rax + rsi]
jmp .bb_0.1
.bb_0.1:
cmovb rdx, rbx
bts esi, 243
sbb rax, -1477844571
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
bt edi, 191
lea rsi, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
