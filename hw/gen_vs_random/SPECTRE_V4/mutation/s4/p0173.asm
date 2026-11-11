.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
sbb cl, 12
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
xor ax, -6064
xor eax, -1772786275
xchg dl, dil
xor rsi, rdi
sbb edi, 107
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
btc di, 107
add dil, 75
cmovs bx, si
test ecx, eax
movsx di, bl
sbb rdx, -43
test al, dl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovo ebx, ecx
test al, 72
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
sbb cl, 127
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
xchg esi, eax
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33
test bl, -29
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
bts edx, edx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor al, dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
cmovnp esi, esi
add dl, -91 # instrumentation
cmovl rax, rax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
cmovs rbx, rbx
and cl, al
adc ebx, 51
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
