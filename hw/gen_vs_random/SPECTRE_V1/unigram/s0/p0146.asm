.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
imul dx, ax, 97
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
or bl, sil
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovnz di, bx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
movzx eax, bx
cmp al, al
cmovnbe rax, rsi
xor cl, cl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
setnp dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
