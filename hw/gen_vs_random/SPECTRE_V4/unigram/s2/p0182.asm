.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 8
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
imul dx, ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 64
add bl, -49
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], esi
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
sbb edx, 20
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
test al, sil
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
cmovnz rax, rsi
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
mov rdx, rsi
add dl, -82
xor al, dl
or dil, dl
add rcx, 32
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
adc rdi, 8
add dl, 29 # instrumentation
cmovnl rax, rcx
cmovo ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
add al, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 89
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
sbb rdi, rdx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
movsx cx, bl
btr rax, 187
cmovp rax, rdx
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
or rdx, rax
or dl, dl
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
not cx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
sub sil, 71
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
cmovnp dx, si
add al, al
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
test dl, 114
sub dl, 107
add bl, 102 # instrumentation
cmovnp edx, eax
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
add bl, 71 # instrumentation
adc dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
