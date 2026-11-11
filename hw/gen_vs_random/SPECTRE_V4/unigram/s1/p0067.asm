.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
sbb rsi, -115
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
movzx edx, cl
xor rdx, rdi
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
or ecx, 65
sub dil, dl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
or bl, sil
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
test bl, dl
test cl, -89
or cl, bl
xor al, 56
or dx, 84
add ax, -15653
or ecx, eax
or dil, 97
add bl, -26 # instrumentation
btr ebx, 63
or di, 0b1000000000000000 # instrumentation
bsr dx, di
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
and cl, 58
and al, -127
cmovns si, bx
test rcx, -2118888343
or esi, 16
bt eax, esi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
cmovns bx, dx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
test sil, dil
add al, 118
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
sub al, 98
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
