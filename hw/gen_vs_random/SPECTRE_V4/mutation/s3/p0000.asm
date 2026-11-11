.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -16
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 7
or al, sil
dec rax
neg ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
dec dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add al, -99 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
add rax, rax
xchg rdi, rbx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and ax, -197
xor al, 106
sbb al, 102
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
add bl, cl
cmp rax, 1097504565
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
cmovbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
cmp al, -122
movsx eax, dl
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
adc al, al
or ax, -29521
cmovnp di, ax
btr cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
mov al, cl
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
sbb al, -39
cmovp rbx, rbx
xor rcx, 112
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and cl, dl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
xor al, cl
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
test bl, dil
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
cmovb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
