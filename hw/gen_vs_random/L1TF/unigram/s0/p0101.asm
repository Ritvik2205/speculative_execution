.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovs ecx, ecx
mov al, dl
xchg bl, al
add dl, dl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovo edx, ebx
add bl, -4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add al, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
and dl, al
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
adc bl, al
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
