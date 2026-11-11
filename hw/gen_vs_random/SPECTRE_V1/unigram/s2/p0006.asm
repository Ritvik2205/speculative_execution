.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 77
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 52
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
dec sil
cmp cl, 21
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 47
imul rdi, rsi
add al, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or edx, 61
and dl, bl
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
sub bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
