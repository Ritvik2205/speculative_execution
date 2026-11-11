.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 20
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
sbb rsi, -115
adc ebx, 117
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
adc eax, -1513455903
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
xor edi, 54
cwde
cmp al, 81
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
add bl, dl
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 86
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
sub sil, -50
and rdi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdi]
and dl, al
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
imul bx
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
add sil, 26
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
movzx rax, dl
sbb al, -101
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
cmovle cx, di
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test bl, 0
cmp bl, bl
cmp ax, 23131
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
sub bl, bl
and al, -36
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and al, -36
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
add bx, 110
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
