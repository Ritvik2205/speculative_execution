.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, ax
test bl, -29
cmp rax, 1097504565
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
mul rdx
imul ecx
cmp eax, -2073187604
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
cmp al, -53
movzx si, bl
and edi, -102
movsx ax, dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
sub rdi, 105
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
cmp rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sub cl, dl
imul cx, cx
cmp al, dl
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
sbb ax, 1843
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
cmp rsi, 74
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
or eax, -1213318393
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
