.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 19 # instrumentation
setnz sil
cmp al, 23
add cl, 36 # instrumentation
sub rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
movsx cx, dl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
sbb rdi, 53
lea rcx, qword ptr [rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
imul al
add bl, -23 # instrumentation
setnle cl
sbb dil, -106
imul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
