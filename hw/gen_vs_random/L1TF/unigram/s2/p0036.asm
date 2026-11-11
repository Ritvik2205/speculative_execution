.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
dec si
add sil, 97 # instrumentation
cmovnbe esi, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
lea rax, qword ptr [rdi + rdi]
neg bl
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
add dx, 56
or rax, 1362710293
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rbx]
bts edx, 70
lea eax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
