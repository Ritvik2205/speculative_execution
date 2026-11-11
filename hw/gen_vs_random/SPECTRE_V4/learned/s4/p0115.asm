.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rdx
adc al, 69
not ecx
xor cl, bl
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
adc rsi, rax
cmovs edx, eax
adc bl, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
sub cl, -74
and rdi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
btc ax, si
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
add sil, dl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rax, 54
cmp ax, -15409
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
sub ecx, eax
sbb eax, 4
adc bl, 89
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
or cl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
