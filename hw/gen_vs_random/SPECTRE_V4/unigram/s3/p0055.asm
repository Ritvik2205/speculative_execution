.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 5
xor rax, 10
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
xor cl, sil
or esi, ebx
cmp bx, 17
and rdi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdi]
sbb sil, cl
add dx, -90
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
test dl, dl
add dil, cl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovnl rsi, rsi
imul rbx
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
cmovp esi, esi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and ecx, 51
dec sil
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
sub dl, 43
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
sbb esi, 68
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
sub al, al
adc cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
imul dx, bx, 85
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
bts edx, 96
cmp rax, -120490246
cmovb rdx, rax
test bl, cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
xor dil, 63
add sil, dl
and bl, -63
adc al, dil
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
cmovnbe rdx, rsi
imul rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
