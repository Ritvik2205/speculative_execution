.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
adc rax, -384715932
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
mul dil
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
xchg dx, si
lea rax, qword ptr [rsi + rdx + 58]
cmovnbe rbx, rbx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
imul rsi, rdi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], dx
add al, 110
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
dec sil
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
