.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
mov eax, esi
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 59
or dx, 0b1000000000000000 # instrumentation
bsr bx, dx
add al, cl
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
movsx ebx, ax
add al, -117 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
add bl, -75 # instrumentation
adc bl, 31
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
add bl, cl
cmovnl rax, rcx
btr rsi, rbx
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
sub rbx, 30
add ax, ax
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ebx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
xor sil, 56
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
xor ecx, ebx
cmovnl rdi, rbx
or ax, -15282
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
cmp rbx, 30
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
cmovnbe si, dx
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rbx]
imul bx
xor cl, -54
or al, 96
bts esi, 241
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
