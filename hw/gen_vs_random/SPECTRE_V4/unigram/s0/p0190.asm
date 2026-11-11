.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 88
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
mul rbx
neg rsi
test edi, -1249897727
adc al, dl
cmovnb cx, cx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 91
add cl, -82 # instrumentation
sbb bx, cx
imul rsi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
imul si, ax
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
btr rax, rcx
add bl, cl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
btr rdx, rdi
sub ebx, edx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 61
add ecx, edx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
sbb dl, sil
cmovnbe bx, di
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
sub sil, -50
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
neg bl
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
cmovnp eax, eax
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
movsx ebx, al
movzx di, dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
xor al, 59
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
add rbx, 31
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
