.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 4
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
movzx ebx, cl
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
test di, 6
add al, 123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
test bx, dx
inc ebx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
sbb esi, 32
adc bx, bx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 74
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
cmovle esi, ebx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
imul rdi
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 87
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
sbb al, 123
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], di
add rdx, rsi
inc bx
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
cmovnle si, si
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
cmovns eax, edx
add dl, 31 # instrumentation
cmovnl si, si
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
bswap edi
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmp di, 48
cmovnbe rcx, rdi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 46
movzx rdi, si
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
