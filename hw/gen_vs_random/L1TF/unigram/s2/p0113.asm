.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
or edx, eax
and rdi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdi]
and sil, sil
add ebx, 2
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 88
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 47
or cx, 83
lea rdx, qword ptr [rdx + rsi]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and dl, al
xor cl, cl
add al, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
