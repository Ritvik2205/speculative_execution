.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
xor al, sil
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
lea rdx, qword ptr [rcx + rbx + 99]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
add cl, -41 # instrumentation
adc bx, di
bt ebx, edx
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
sub dil, 87
imul edx, edx, 31
lea esi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
