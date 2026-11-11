.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -29521
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
btr ecx, esi
btr dx, 209
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
and rax, 37
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmp dx, -1
and al, -28
imul bl
bt dx, 193
add cl, 35 # instrumentation
cmovnb rdx, rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
btr rsi, 20
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
cmovle rbx, rdx
adc al, -86
test cl, 78
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
test bl, cl
add cl, dl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
cmp rbx, -91
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
