.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 27604
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
btr ecx, esi
btr dx, 245
and eax, -2001076187
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
xchg sil, dl
dec sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
cmovo ax, bx
cmovo rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rax, 86
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmp dx, -1
and al, 85
imul bl
bt dx, 213
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
imul esi, edi
test edi, -1380439873
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
add rcx, 32
bts di, 30
xor al, -66
bts rsi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
sub edx, 73
imul rdx, rsi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
mul edx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
sbb cl, 40
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
cmovnb eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
