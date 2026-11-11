.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, sil
btc edx, 15
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
movzx rax, di
imul rdi
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
sub dil, dil
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and sil, -49
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 90
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 16
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
test dl, cl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 58
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
test eax, 1561062795
movzx ecx, dl
cmp dl, cl
mov bx, -31043
cmovs cx, cx
add dil, 16
cmp cl, cl
cmovnle si, cx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 7
cmovle rax, rcx
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 52
sub ecx, edx
movzx rdi, al
sbb ebx, 97
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 84
sub dl, dl
btr rax, rdi
btc di, 11
sub al, 99
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
or edx, -127
sub dl, sil
sub dl, dl
sub cx, bx
xor ecx, ebx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
cmovnp dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
