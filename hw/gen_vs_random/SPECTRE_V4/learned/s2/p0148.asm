.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
sbb bl, al
add sil, dil
adc dl, bl
dec rdi
adc rbx, 14
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
cmovz esi, ebx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 96
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
or ax, -15282
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and eax, -24
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 93
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sub esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and dl, sil
cmovz eax, eax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 67
imul bx
or rcx, 59
sub bl, bl
or dl, cl
xor bl, 93
xchg ecx, edx
neg ebx
imul rdi, rbx, 45
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 19
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add ebx, edi
test eax, 1561062795
movzx ecx, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
adc si, 18
add dl, 41
sub al, 99
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
xor esi, ebx
or al, cl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
