.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
sub bx, si
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
add bl, bl
sub al, -89
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
adc edx, edx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
mov dl, cl
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
lea rax, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
