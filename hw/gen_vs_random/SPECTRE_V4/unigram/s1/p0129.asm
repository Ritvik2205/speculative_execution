.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
or bl, -99
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
sbb rsi, 117
or dx, 32
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
imul sil
test dil, -5
xor rsi, -102
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
add al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
movsx edx, ax
inc sil
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
sub rcx, rcx
cmp rax, rdx
xor bl, dl
add cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
or rcx, rdi
cmovnz bx, ax
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 70
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
not cl
cmovno esi, eax
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
cmovle rdx, rbx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 55
and rbx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rbx]
or edx, -83
cmovl eax, edi
bt cx, ax
bswap eax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
and bx, cx
or ax, -26182
and rcx, 29
cmovp rdi, rdx
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
xor ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
test dil, -58
cmovbe edx, edx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
