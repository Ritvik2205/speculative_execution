.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
add sil, dl
add cl, -103 # instrumentation
cmovnz cx, ax
add sil, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
bt rbx, 60
neg rdx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
adc ecx, 33
cmp rax, 921820217
and rax, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 23
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
