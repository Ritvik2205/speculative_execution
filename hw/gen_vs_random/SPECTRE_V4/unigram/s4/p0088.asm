.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
and dl, 83
sbb al, -101
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test bl, bl
cmovo rbx, rbx
imul dl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
add dl, 41
add sil, 26
movzx edi, al
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi]
xor eax, -437098167
movzx bx, cl
add di, -74
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
add al, -26 # instrumentation
btr eax, 52
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
sub al, al
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
add rdx, rbx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, si
cmovnbe bx, di
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 58
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
imul ax, si
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 20
imul bl
and ax, 35
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 92
cmovnle bx, bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 47
test sil, 93
sub dil, -10
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
