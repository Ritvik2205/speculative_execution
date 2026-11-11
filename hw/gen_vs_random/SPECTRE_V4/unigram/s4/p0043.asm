.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, bl
and dx, 1
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
neg al
sbb rax, rsi
test cx, si
and rdx, 45
not cx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 21
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
cmovnp ecx, edx
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt cx, 111
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
cmovle si, si
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
sbb sil, 108
not dl
cmovp eax, esi
or al, al
or bl, 81
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
test bl, dl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
cmovz ebx, edx
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
sbb dl, -99
dec si
movzx esi, si
sub dil, -10
test rbx, 58
btr rax, rcx
test eax, 1561062795
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], bx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
cmovp rdx, rsi
and cl, dl
movzx rsi, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
