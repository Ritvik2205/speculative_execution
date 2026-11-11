.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
add al, -65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
cmp al, sil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
lea cx, qword ptr [rsi + rcx + 13]
add al, 24 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
xor al, sil
lea rdi, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
