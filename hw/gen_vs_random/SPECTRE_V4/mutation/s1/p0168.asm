.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and cl, al
cmovnp esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
movsx di, bl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
add dl, -91 # instrumentation
cmovl rax, rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33
xchg esi, eax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
bts edx, edx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
sbb cl, 45
test bl, -16
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
test al, 18
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovs bx, si
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
sbb ax, -30070
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
cmp rsi, 22
dec si
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -1807520971
and al, dl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
cmovp rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
add cl, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
or eax, -612395655
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
