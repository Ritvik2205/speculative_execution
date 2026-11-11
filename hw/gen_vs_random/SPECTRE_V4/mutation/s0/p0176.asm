.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, ax
test bl, -16
cmp rax, 1682181214
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
mul rdx
imul ecx
cmp eax, 89
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
cmp al, -106
movzx si, bl
and edi, -102
movsx ax, dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
sub rdi, -34
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
cmp rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sub cl, dl
imul cx, cx
cmp al, dl
test dl, al
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
sub rbx, rbx
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
add al, -32
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
add al, -71 # instrumentation
cmovb rbx, rsi
sbb bl, 121
and bl, cl
mov esi, 1695134926
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
mul eax
mul cx
sbb dl, bl
test dil, -26
cmovo cx, dx
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
bt rsi, rbx
cmovnz rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
