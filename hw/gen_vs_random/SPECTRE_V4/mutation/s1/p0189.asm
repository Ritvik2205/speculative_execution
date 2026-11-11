.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ebx, ecx
add dil, 75
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
test al, 115
xchg dl, dil
test al, dl
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
cmovs rbx, rbx
xor al, dl
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
cmovnp esi, esi
add dl, -91 # instrumentation
cmovl rax, rax
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
sbb cl, 12
sbb cl, 45
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
xor ax, -29507
btc di, 83
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
sbb rdx, 6
xor eax, -48271836
sbb edi, -94
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
test ecx, eax
bts edx, edx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
xor rsi, rdi
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
movsx di, bl
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
test bl, 110
adc ebx, 51
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovs bx, si
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
xchg esi, eax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
xchg ebx, eax
and cl, al
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
