.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 7
add dl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
cmovnbe ax, bx
movzx rax, sil
movsx rdi, bl
mov bl, 49
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
adc rdi, 65
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
dec dx
sub ax, 24441
movzx eax, al
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 54
adc dx, 68
adc sil, 61
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
or bl, cl
btc dx, 16
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
btc di, dx
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
cmovns si, di
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
xchg bl, dil
xor eax, -164167056
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
sbb cl, -104
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
inc edx
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
or dil, sil
cmovo edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
