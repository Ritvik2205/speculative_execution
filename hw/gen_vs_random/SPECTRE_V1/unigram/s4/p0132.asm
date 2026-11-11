.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdi + rdi + 96]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -90
and bx, 99
xor rax, 1636804787
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 22
cmovb edi, edi
sub bx, ax
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
