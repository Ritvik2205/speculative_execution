.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
cmovs rbx, rbx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
cmovo ebx, ecx
btc di, 83
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
xchg ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
xor ax, -22861
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
sbb cl, -69
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
add dil, -61
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
test al, dl
and cl, al
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
sbb edi, 107
test al, 18
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
xor eax, 365940537
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
cmovs bx, si
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
add dl, -91 # instrumentation
cmovl rax, rax
xor al, dl
test bl, -29
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
bts edx, edx
test ecx, eax
cmovnp esi, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33
xchg dl, dil
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
sbb rdx, 6
movsx di, bl
xor rsi, rdi
sbb cl, 45
xchg esi, eax
adc ebx, -55
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
