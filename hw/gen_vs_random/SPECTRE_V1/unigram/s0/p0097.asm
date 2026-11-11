.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc eax, 34
nop
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 12
lea ecx, qword ptr [rdx + rsi + 85]
sub dil, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
adc cx, -30
mov al, cl
cmovno dx, si
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
test dl, -105
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
lea cx, qword ptr [rdi + rbx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
