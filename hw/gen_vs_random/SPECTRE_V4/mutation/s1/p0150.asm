.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -59 # instrumentation
movsx edi, bl
cmovno esi, edi
sbb dl, cl
cmp dil, -92
test dil, -5
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
cmovbe rsi, rax
mov cl, 1
and ebx, -122
adc rax, 253624080
sub al, dl
cmovnz cx, di
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
add al, cl
cmovbe eax, esi
cmovnl rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add cl, 87 # instrumentation
cmovz edx, ecx
sub rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
sub dl, bl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
cmovb rsi, rsi
movsx ecx, bl
dec al
dec edx
xor bl, cl
xchg bl, al
xor dl, al
mul sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
add cl, -65 # instrumentation
adc al, cl
add si, ax
sub cl, cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
xor al, -6
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
add dl, bl
add ecx, esi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
