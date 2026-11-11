.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bx, 65
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], bl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl ecx, edx
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
xor sil, sil
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
lea rsi, qword ptr [rsi + rax]
bts rdx, 212
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 50
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
