.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -105
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
sub cl, -47
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 22
add dl, -16 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], ax
cmp cl, dil
neg cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 14
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
lea si, qword ptr [rdi + rax + 78]
add al, 72 # instrumentation
cmovns bx, cx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
xor dl, dil
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
imul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
