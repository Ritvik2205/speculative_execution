.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -38 # instrumentation
cmovp rax, rsi
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 8
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
test cl, bl
jmp .bb_0.1
.bb_0.1:
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
cmovs ecx, ebx
test sil, dil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 78
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
sub rdx, rax
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 72
xor rsi, 43
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
not rdi
cmovnp ecx, edx
and dil, al
bt esi, edx
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
mov rdx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
cmovnbe rbx, rcx
xor al, -119
adc bl, dil
cmovb rdx, rdi
or ax, 6575
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 83
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
imul bl
add cl, -117 # instrumentation
cmovs rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
