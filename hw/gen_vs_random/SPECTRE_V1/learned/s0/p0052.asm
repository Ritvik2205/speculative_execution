.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 78
and al, dl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
or bl, dl
setnl dl
sbb rax, 1380680934
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 59
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 76
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
mov cl, cl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 14
not al
xor sil, sil
and al, -119
bts bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
