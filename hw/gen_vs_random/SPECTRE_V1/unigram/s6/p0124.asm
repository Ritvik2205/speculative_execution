.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 35
add sil, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
add sil, 2
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
jle .bb_0.1
jmp .exit_0
.bb_0.1:
neg rcx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 44
mov cl, al
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
cmovno ax, cx
sbb si, 57
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
lea rbx, qword ptr [rcx + rbx + 50]
and dl, dl
mov al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
