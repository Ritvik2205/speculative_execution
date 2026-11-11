.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdi]
lea rcx, qword ptr [rdx + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
mov al, bl
add al, -76 # instrumentation
cmovnbe dx, dx
add bl, 78 # instrumentation
adc si, -91
add cl, 71 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], si
lea dx, qword ptr [rsi + rcx]
btc ecx, 97
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, -31
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
setb al
sbb cl, 105
imul al
xchg al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
