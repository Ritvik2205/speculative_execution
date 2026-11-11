.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 28571
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
btr ecx, esi
btr dx, 209
and eax, -1555813586
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
xchg sil, dl
dec sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
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
and rax, 1827025056
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmp dx, 13
and al, 75
imul bl
bt dx, 81
or al, -47
or bl, -80
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
mov bl, al
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
movsx cx, dil
mov rdi, rdi
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 98
add al, -60 # instrumentation
cmovle rsi, rdx
mov sil, sil
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
test cl, -10
xor dl, al
inc sil
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
add rax, 1049076260
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
cmp rbx, -91
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
adc dil, 124
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
