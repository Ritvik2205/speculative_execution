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
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
add rdx, rax
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rdx]
bt edi, 230
sbb rax, 717206440
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
cmovb rdx, rbx
bts esi, 243
jmp .bb_0.2
.bb_0.2:
xor al, cl
xor cx, -79
btc cx, 54
cmovnbe ax, cx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
add cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 125
sbb cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
