.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rsi]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 41
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
adc sil, dil
btr edx, ebx
sbb rax, rsi
neg rcx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
xor cl, dil
cmovo rsi, rsi
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
mov al, -101
sub rbx, 95
btc di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
