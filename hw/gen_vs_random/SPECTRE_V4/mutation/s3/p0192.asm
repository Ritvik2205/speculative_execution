.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 64
xchg dl, dil
test bl, -91
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
sbb cl, -69
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
test al, dl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
cmovo ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
adc ebx, -55
add dl, -91 # instrumentation
cmovl rax, rax
movsx di, bl
xchg ebx, eax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
xor al, dl
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
xor eax, 1185843233
cmovnp esi, esi
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
btc di, 83
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
xchg esi, eax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
cmovs rbx, rbx
sbb edi, -94
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
xor ax, 13329
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
test al, 114
bts edx, edx
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
cmovs bx, si
sbb cl, 45
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor rsi, rdi
test ecx, eax
add dil, -84
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
sbb rdx, -43
and cl, al
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
