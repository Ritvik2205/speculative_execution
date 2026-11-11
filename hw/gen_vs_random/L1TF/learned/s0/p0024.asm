.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rax + rsi + 88]
sub al, bl
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor dil, al
cmp al, bl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
xor al, 38
test rbx, 91
lea ebx, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
