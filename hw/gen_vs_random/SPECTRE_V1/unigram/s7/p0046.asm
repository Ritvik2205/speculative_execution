.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
lea ecx, qword ptr [rbx + rbx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
or bl, 28
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
adc ecx, 34
sub dl, al
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
sbb dil, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
add dl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
mul dil
bt esi, eax
imul rsi, rbx, 65
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
