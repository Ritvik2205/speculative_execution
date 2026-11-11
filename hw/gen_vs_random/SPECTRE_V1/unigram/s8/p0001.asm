.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 62
sub esi, 27
add al, -25 # instrumentation
sbb di, cx
test dil, dil
add al, 19 # instrumentation
setnz sil
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
lea cx, qword ptr [rsi + rbx + 100]
test ax, 19339
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, 49
add al, 64 # instrumentation
cmovnz bx, di
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
add cl, -119 # instrumentation
adc dil, bl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
add bl, 33 # instrumentation
setnz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
