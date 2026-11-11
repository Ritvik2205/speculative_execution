.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
and ecx, 71
add cl, -50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
bt edx, 1
and bx, 53
and cl, 32
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
xor rdx, rcx
not dil
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 79
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
or sil, al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg bl, bl
add cx, ax
mov al, 90
sbb bl, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
mov ebx, 51969593
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
cmp di, -8
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
add al, -4
or cl, 1 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
sub rdi, -34
adc al, al
sub dl, 107
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rcx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdx
cmovnl si, dx
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
cmp al, dl
dec dl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
btc edx, edi
movzx si, cl
cmovl ebx, esi
test rdi, rax
movsx si, dl
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 84
xor rcx, rdi
cmp al, -53
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
