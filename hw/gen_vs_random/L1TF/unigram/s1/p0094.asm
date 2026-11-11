.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rsi + rdx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 32
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
imul bl
cmp rsi, 12
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
add cl, 72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
adc al, al
imul rdi, rdx
cmovnle ecx, edx
add cl, 72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
