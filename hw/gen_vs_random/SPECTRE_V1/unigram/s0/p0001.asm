.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 720259356
add dl, -121 # instrumentation
setno dl
sub rdx, rax
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
btr rdx, rsi
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
loop .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, dil
bt rdx, 66
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edi
neg rax
adc sil, cl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
sbb al, 33
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
