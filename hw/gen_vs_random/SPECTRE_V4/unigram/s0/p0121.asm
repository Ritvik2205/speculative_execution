.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp di, ax
test ax, -6841
add edx, 89
sub rcx, rbx
sbb bl, bl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
cmovs ax, cx
xor sil, cl
and rcx, 0b1111111111111 # instrumentation
mul cx
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], edx
and ax, ax
mov dil, dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
inc rcx
imul rax, rbx
sub dil, dil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 40
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
add bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
add bl, -2 # instrumentation
cmovs rdx, rcx
or dil, 5
mov bl, 106
and al, cl
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
test rax, -1395313845
test bl, -29
mov esi, esi
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
add bl, -18 # instrumentation
cmovs di, cx
xor eax, esi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 19
mov cl, sil
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 7
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
sub rdx, 42
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
sub eax, -638345541
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 19
cmovs rdx, rdi
add cl, -6 # instrumentation
cmovo rax, rsi
movsx si, dil
sbb dil, sil
and sil, cl
or dx, 15
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 32
and dl, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
