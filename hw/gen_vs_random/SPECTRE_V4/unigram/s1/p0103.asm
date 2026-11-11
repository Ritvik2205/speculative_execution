.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts di, si
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
or ebx, -78
not cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
mov edx, -950755477
cmp eax, 2
movzx bx, al
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rax
mov sil, 86
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
cmovnle ax, bx
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovno cx, ax
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
cmovnp cx, ax
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ebx
xor cx, -80
cmovnz rbx, rbx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 17
xor al, cl
cmp ecx, 6
or rbx, 69
cmp dil, -29
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
cmovo ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
sbb edi, -94
cmovo rax, rbx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
cmovo edx, ebx
sub bx, dx
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
add dl, -8
test al, -26
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
dec sil
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
