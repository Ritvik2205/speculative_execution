.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 87
movzx si, sil
and eax, -1948401947
xor al, -40
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
and dx, bx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
add edi, 5
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and cx, -117
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
btc ax, 92
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
sub eax, 1050143384
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
movsx rax, dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
cmovbe di, cx
cmovl ecx, esi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
add dl, 40 # instrumentation
cmovnp rax, rdx
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
mov eax, 1596316323
sub rbx, 101
imul edx, edi, 14
adc dl, 3
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
or dl, -26
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
cmovle esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 24
mov dl, al
cmp di, -8
imul sil
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
bts rbx, rdx
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
bt rdx, 76
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
inc cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
