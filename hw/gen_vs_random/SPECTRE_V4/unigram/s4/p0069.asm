.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
movzx rsi, al
add sil, 3
and si, -70
add al, -79 # instrumentation
adc rcx, 67
dec sil
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
dec ecx
or rdx, rsi
cmovs eax, edi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
or dil, dil
cmovb rax, rax
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
imul si, ax
sub rbx, 101
movsx ecx, bx
imul edx
or rsi, 73
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
cmovle rax, rdi
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
add rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
bt rbx, rbx
mov sil, dl
test sil, 1
and bl, -30
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
add bl, 7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
sbb bx, 87
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rsi
cmovns ax, bx
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
mov dil, sil
and rcx, 29
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
sbb bl, 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
