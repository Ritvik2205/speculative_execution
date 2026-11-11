.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 79
cmovp eax, edx
sbb dil, 12
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, -5
lea edi, qword ptr [rsi]
cmovp esi, edx
sub ecx, 65
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
add dl, dil
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
cmp al, -23
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
add rdi, 105
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
cmovnl rax, rax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add al, 118
xor al, 102
or dl, dil
movzx dx, dl
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
xor cl, -85
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
bts edi, 167
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
test eax, -818909344
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
add al, 118
movsx rdi, dx
xor dil, al
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
inc edx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
or cx, 82
btr ecx, edi
imul rax, rcx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
