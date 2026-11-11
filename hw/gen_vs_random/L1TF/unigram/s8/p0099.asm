.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
cmovnz rax, rdi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
or rsi, 79
and sil, -90
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
add bl, 37 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 39
add dx, 80
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
cmp al, bl
add al, -110 # instrumentation
btr ax, 72
setns cl
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
