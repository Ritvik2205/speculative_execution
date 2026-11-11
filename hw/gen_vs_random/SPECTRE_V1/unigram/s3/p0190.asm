.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
or al, sil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
bt ebx, eax
add cl, dil
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
setnz dl
and rdi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
xor rdi, 89
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 68
mov al, al
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
