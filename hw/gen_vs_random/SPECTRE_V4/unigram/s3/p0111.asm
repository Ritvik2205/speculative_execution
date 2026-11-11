.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 28
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
bt rbx, 13
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 99
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
cmp ecx, 32
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
test cl, -31
bt rcx, rdi
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 38
sub rdx, rax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
sub bl, 56
or edx, -118
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
test esi, -2111618709
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
adc cl, dl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
xchg rbx, rbx
xchg eax, eax
and edx, 24
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
imul rdi, rdx
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 99
movsx ax, dil
test dil, 64
movzx ebx, bl
mov dil, al
add cl, -75 # instrumentation
sbb eax, -676736552
sub ecx, edx
sub al, -84
dec dil
adc bx, si
sub bx, 24
sbb bx, 87
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
cmovnle rsi, rsi
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 93
and eax, -784085938
test bl, -91
btr eax, 84
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
adc rsi, 82
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovnp rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
