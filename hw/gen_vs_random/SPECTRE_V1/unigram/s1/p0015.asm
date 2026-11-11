.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
lea ax, qword ptr [rsi]
lea edx, qword ptr [rdx + rbx + 6]
sub eax, -911655926
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
imul dx
test al, 42
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], -16
lea rdi, qword ptr [rcx + rdx + 91]
cmovl rsi, rsi
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnz cx, dx
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
lea rax, qword ptr [rsi + rcx]
and dl, -92
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
