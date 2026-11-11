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
and eax, -1948401947
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
and rax, 37
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmp dx, 13
and al, 82
imul bl
bt dx, 213
sbb ax, 75
imul dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
xor bl, -126
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
xor rcx, 112
dec rbx
cmovp rdx, rax
test dil, -5
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
bswap rcx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and al, bl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
test cl, cl
adc bl, bl
bts esi, 107
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
