.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb edi, -94
adc ebx, -55
add dil, -84
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
xor eax, 308288205
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
btc di, 83
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
xor al, dl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
xchg esi, eax
cmovo ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
cmovs rbx, rbx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
sbb cl, 40
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
sbb cl, 12
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
xor rsi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
xor ax, -6064
and cl, al
xchg dl, dil
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
xchg ebx, eax
add dl, -91 # instrumentation
cmovl rax, rax
movsx di, bl
test ecx, eax
test al, dl
sbb rdx, -43
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33
test bl, 78
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
bts edx, edx
test al, 57
cmovs bx, si
cmovnp esi, esi
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
