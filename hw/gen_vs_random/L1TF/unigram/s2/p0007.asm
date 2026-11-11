.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
sbb edi, 10
add dil, -109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
add sil, sil
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
lea rax, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 56
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
or rax, rcx
dec edi
neg dl
not dil
adc cl, dl
lea si, qword ptr [rdi + rsi + 46]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
