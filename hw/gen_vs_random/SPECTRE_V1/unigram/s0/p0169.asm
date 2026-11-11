.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, -122
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
xor dil, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
btc rsi, 96
lea ax, qword ptr [rbx + rcx + 30]
setnz sil
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
adc bx, cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 56 # instrumentation
cmovns ecx, eax
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
add dl, 92 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
test di, 7
sub rdi, 37
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
