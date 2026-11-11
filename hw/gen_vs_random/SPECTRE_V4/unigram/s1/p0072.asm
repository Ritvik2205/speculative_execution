.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
adc rdi, rbx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 77
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
sub rdx, 22
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
test dl, 19
test rdx, 93
inc rcx
imul dx
movzx rdx, ax
cmovnl rcx, rdi
xor bl, dl
sub bl, dil
add esi, -5
sbb dx, di
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
cmp al, -23
mul ax
movzx eax, bl
not rax
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
mov sil, 97
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 45
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
sbb eax, 4
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
cmp cl, dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 17
movzx rbx, dx
mul cl
movzx eax, cl
or dl, 88
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 93
bt esi, 227
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
cmovnb cx, cx
movzx eax, ax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
not edi
bt edi, ecx
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
btc rdx, 71
xchg dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
