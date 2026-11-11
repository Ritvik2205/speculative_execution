.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp esi, esi
add dl, bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
btc cx, 240
add rsi, rdx
add cl, -42 # instrumentation
adc dl, sil
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
or al, -71
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 27
cmovnl dx, di
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
or sil, bl
xor bl, 93
test sil, 24
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
cmovo rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
add cl, bl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
cmovle cx, cx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 8
sbb si, 98
sbb al, cl
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
add cx, 74
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
not dx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
xor sil, dil
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 71
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
sub al, 119
cmovns rsi, rbx
cmp rdi, 50
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
