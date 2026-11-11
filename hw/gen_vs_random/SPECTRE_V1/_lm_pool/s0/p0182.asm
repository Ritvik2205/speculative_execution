.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
mov bl, dl
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
setb al
xor dl, al
sub al, bl
and rbx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
lea rax, qword ptr [rdx + rax]
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
