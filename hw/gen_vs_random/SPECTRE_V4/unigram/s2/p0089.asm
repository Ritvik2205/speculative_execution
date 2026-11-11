.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 35 # instrumentation
cmovnb rdx, rcx
sub al, -128
test cl, dl
xor esi, esi
or rbx, 69
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
imul rdx, rdx, 44
sub al, 127
cmovo ecx, edx
btc ebx, 39
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 56
not rcx
adc al, al
sbb rcx, -73
cmovp esi, esi
add bl, bl
or dil, -16
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg dil, dil
cmovnz rax, rdx
add al, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 12
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
imul ecx, eax
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], esi
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
imul rdx, rdi, 23
cmovz rax, rdx
cmovs ax, di
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
cmp esi, ebx
movsx ecx, al
sbb al, -14
mov al, cl
add cl, bl
sub dl, cl
sub rax, 120
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 28
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rax]
cmovno rax, rdi
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
xor rax, 944027678
bt rdx, 61
adc dl, 3
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
