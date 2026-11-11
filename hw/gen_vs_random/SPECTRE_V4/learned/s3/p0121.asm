.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 19
cmovnb esi, edi
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
test eax, -818909344
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
add al, 5
cmovns eax, edx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, -5
sbb sil, 108
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
sub eax, 2
xor di, cx
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
bt edx, ebx
lea ecx, qword ptr [rdi + rsi + 23]
sub ax, 24441
dec dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
movsx eax, di
adc al, 36
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
cmovnl rax, rax
sub eax, 2
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
movzx rdx, cx
adc dl, dl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 5
imul ebx, esi, 27
or esi, edx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
add edi, 11
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and si, 68
add bl, al
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
movsx rdi, bx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
add dl, sil
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdi, -2
cmovnp rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
