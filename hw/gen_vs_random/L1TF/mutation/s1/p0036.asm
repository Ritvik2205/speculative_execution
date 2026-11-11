.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
setb bl
lea ecx, qword ptr [rax + rsi]
add rdx, rax
adc al, 36
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rdx]
sbb rax, 717206440
bt edi, 230
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
bts esi, 243
cmovb rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
