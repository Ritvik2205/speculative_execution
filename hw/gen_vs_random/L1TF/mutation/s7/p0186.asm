.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
add bl, 93 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], -15
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rsi
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
lea rdi, qword ptr [rsi + rax + 41973]
and sil, 37
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
imul si, cx, 27
mov al, -101
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
add bl, al
cmovl di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
