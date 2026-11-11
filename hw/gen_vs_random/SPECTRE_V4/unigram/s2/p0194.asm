.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 16
or eax, -1779536330
btc ebx, 61
xor rbx, -99
cmp bl, cl
adc rbx, rax
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
mov dl, -124
or bl, dl
bt bx, 77
add bl, -49
or bl, -80
or bx, 0b1000000000000000 # instrumentation
bsr si, bx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 98
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -100
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
movzx eax, sil
cmovno dx, cx
xchg ecx, eax
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
xor dx, -43
and rdi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
or si, -84
cmovl rsi, rdi
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
bt rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
or dil, -104
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
xchg dil, bl
sbb eax, 1482884079
adc al, -59
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
bt di, 46
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
