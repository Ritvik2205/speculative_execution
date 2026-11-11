.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
setb bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
add rdx, rax
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
adc al, -3
lea ecx, qword ptr [rax + rsi]
jmp .bb_0.1
.bb_0.1:
bts esi, 243
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
sbb rax, -1477844571
cmovb rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
lea rsi, qword ptr [rdx]
bt edi, 230
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
