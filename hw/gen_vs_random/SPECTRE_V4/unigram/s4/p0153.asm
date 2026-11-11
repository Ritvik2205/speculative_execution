.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 69
cmovno esi, eax
and eax, -1948401947
mov rbx, rcx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ebx
xor esi, -82
add dil, sil
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
btc ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
add bl, 95 # instrumentation
mov sil, 98
sub bx, dx
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
imul rdi, rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
sbb al, dil
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 83
cmovo edi, ebx
neg ebx
test edx, -38580719
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
or bx, -33
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 40
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and dl, -104
and bx, 8
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
and ecx, 71
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -103
cmovnb cx, cx
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
or dl, dl
dec bl
add al, 32 # instrumentation
adc rax, -324435035
and ax, 27239
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
add rdx, 50
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
movzx rax, cx
btc rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
