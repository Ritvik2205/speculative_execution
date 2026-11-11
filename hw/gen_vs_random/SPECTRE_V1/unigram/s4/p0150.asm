.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb al
add cl, -26 # instrumentation
cmovnp bx, cx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dl
add dl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
lea esi, qword ptr [rcx + rdx + 55]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 33
dec rax
cmp dil, 11
mov al, 93
or sil, -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
