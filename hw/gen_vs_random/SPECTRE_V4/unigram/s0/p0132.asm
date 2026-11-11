.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb cx, ax
sub bl, 17
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
xor bl, 93
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
xor al, -2
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 8
or dl, 88
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
xchg rsi, rbx
neg bl
or dl, 56
test eax, -558243208
cmovnbe bx, di
btc rdx, rcx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
cmp dl, 67
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 98
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edi
xor dil, 6
cmp ax, -906
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
cmovb eax, edi
movzx eax, dil
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 86
sub dil, sil
mul rbx
cmp rsi, 59
and cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
mov dl, dl
xor edi, 76
sub eax, esi
sub al, 119
sub dl, 43
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
sbb sil, 108
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
add ax, -13169
and rdx, 92
sbb cl, dl
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
inc edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
