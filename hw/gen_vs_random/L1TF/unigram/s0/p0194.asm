.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 49
sub dl, dil
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and bl, 89
and rax, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rax]
lea edi, qword ptr [rax + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
add cl, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 60
lea eax, qword ptr [rdx + rbx + 28]
add al, 78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
add al, 24 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
add cl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
adc rsi, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
