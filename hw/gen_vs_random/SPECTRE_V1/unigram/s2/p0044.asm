.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 6
cmovno rdx, rbx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 68
sub bl, 74
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], si
sets cl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, 53
or dil, bl
lea bx, qword ptr [rax + rdi + 94]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
lea rsi, qword ptr [rbx + rcx]
sub ebx, 82
or dil, dil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
