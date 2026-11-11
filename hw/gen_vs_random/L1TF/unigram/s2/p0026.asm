.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 4
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
add dl, -70
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
imul al
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 69
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
test di, si
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
cmovl rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
