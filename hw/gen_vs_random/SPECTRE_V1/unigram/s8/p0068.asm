.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bx, si
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
xchg ecx, edi
add si, 93
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
sub ebx, 75
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmovns rcx, rbx
lea di, qword ptr [rdx + rdi]
or sil, 52
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
sub cl, -21
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
imul al
adc dl, 48
adc ebx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
