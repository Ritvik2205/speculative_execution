.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx
add sil, 97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
adc edx, edx
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
add cl, 69 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 75
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
dec al
add bl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
cmovo di, bx
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
cmp al, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
