.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edx
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
add al, -32 # instrumentation
cmovp rax, rcx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
xor rax, rdi
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi], 61
btc edi, ebx
cmovb rdi, rax
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
sbb edi, esi
sbb ecx, 76
and al, -12
cmovz ecx, ebx
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
cmovb esi, edx
cmp bl, -16
cmovnz rsi, rcx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 91
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
btr dx, 209
xor esi, -82
sbb dl, -71
or al, sil
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and dil, al
mov eax, 522619143
movsx rdi, bl
movzx ecx, dil
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 35
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
inc ecx
bts rsi, rcx
add al, 46 # instrumentation
adc ax, di
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], esi
btr dx, 209
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdx
adc sil, al
and rcx, 0b1111111111111 # instrumentation
mul cx
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
cmp cl, bl
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
