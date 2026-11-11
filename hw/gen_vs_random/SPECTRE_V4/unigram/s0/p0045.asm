.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, bl
dec si
dec esi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
add si, 4
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
add al, al
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
cmovs edi, ecx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 89
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
movsx rdi, dx
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
cmovle eax, ecx
adc bx, -89
movsx rdi, dl
movzx ebx, al
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
sub ebx, 78
cmovle cx, ax
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
sub eax, 2
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and dl, bl
sbb dil, dl
add bl, al
test ecx, 7
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, si
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 3
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 32
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
test al, al
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
xor al, al
sub rsi, rcx
cmp sil, 88
cmp ebx, 64
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
test sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
