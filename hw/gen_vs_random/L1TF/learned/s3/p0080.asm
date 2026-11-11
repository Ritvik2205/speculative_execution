.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
xor dl, dil
test al, -82
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rdx + rcx + 27]
sub dl, -34
add dil, bl
or si, 73
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
