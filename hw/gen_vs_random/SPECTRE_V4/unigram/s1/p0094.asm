.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp dx, bx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
cmovnb ecx, edi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add sil, -10 # instrumentation
mov si, 36
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
xchg rsi, rax
adc si, si
cmovs bx, bx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 16
imul edx, ebx, 90
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], ebx
movzx rbx, dl
or ebx, 3
add cl, -21 # instrumentation
adc rsi, 15
add dil, dil
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rax]
cmp dil, bl
add eax, -1796699558
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 3
and dx, 1
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 32
add dl, -94 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
add al, 118
cmovns dx, si
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
xor rax, rdi
add rdx, 39
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
add rax, rsi
test cl, dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 25
add dil, dil
sub bl, dil
neg bx
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
