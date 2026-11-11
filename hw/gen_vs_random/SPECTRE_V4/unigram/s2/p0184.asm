.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
adc ax, 79
dec bl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
or edx, ecx
and rdx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
cmp rsi, 79
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, edi
cmovnp rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
cmovns cx, dx
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], dx
adc dl, 67
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
bswap rax
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
sub dl, 43
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
sub ebx, 17
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
add sil, 56 # instrumentation
cmovle rdx, rsi
imul rdi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
bts ebx, edx
cmovnl di, cx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
add rbx, rsi
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
cmp bl, 13
bswap ecx
add dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
movsx rdx, cx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
xchg rdx, rbx
test sil, sil
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovns cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test cx, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
