.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 57
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
add dl, bl
test dl, -37
lea rax, qword ptr [rdx + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 91
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea rdi, qword ptr [rbx + rax]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
