.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, -1465665890
add bl, -5 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
sub edi, eax
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
lea bx, qword ptr [rdx + rcx + 39]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
sbb rdi, 41
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 14
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
lea rsi, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
cmovnbe rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
