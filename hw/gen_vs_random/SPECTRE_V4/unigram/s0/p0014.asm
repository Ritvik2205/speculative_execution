.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 23
sub cx, ax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -32 # instrumentation
cmovp rdx, rbx
cmovnb eax, edi
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
adc ecx, 55
cmovl edx, eax
or edi, esi
and al, al
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
cmp rcx, -121
cmovno rdx, rsi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
imul esi
movsx cx, dl
add cl, -40 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
cmp bx, 113
dec rax
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
xor dl, cl
and bl, -119
movsx eax, dx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add bl, 40 # instrumentation
cmovnp rdx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
add eax, -2075159577
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
sbb cl, dl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
add ax, -9762
add bl, 69 # instrumentation
cmovnbe ax, dx
mov sil, cl
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rcx, rdi
xchg rax, rcx
sub edi, 13
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 46
add bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
test esi, -2111618709
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
cmovnz rdi, rax
cmovnz edi, edx
test sil, -119
and rdi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdi]
add sil, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
