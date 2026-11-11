.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
cmovo rbx, rdi
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
cmovo esi, ebx
cmovnbe rdx, rcx
cmovle rax, rcx
cmovbe ax, ax
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
cmovnp dx, si
or eax, -1341747033
sbb cx, cx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
xchg rdi, rcx
adc rsi, 82
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
cmp bl, -16
movsx si, cl
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
movsx dx, dl
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
or al, dl
cmovnp ax, si
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
cmp ax, -22704
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
cmovnl dx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
test rcx, 53
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
xor dil, 37
and ecx, 71
xor bl, 126
not edi
bt ecx, 247
and ecx, 71
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
