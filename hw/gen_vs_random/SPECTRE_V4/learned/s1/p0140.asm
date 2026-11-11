.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 66
or al, al
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 12
or cl, dil
cmp dil, dl
cmp dl, sil
or cx, 59
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
sub al, cl
or al, 27
and al, 59
sbb dl, -106
add eax, 953442933
adc al, dl
xchg ebx, eax
and al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
