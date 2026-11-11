.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb edx, eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
cwde
cdq
lea rcx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
cmovb ebx, edi
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
jmp .bb_0.1
.bb_0.1:
add al, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
adc esi, esi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
xor ax, 30996
cmp ax, -6940
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
lea eax, qword ptr [rsi + rbx + 1473]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
