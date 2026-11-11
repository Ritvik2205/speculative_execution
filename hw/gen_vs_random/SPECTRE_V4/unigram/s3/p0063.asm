.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
add rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rbx
test dx, 51
xchg sil, al
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
add dl, 100 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rsi]
mov al, 10
adc dl, 3
adc al, cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 83
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
cmp rax, 1524061352
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 10
cmovnbe rdx, rax
test al, al
sbb rdi, 88
imul bx, cx
cmovle rax, rcx
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdx]
cmovo rcx, rax
cmp cl, 2
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 82
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
movsx edi, sil
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 44
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
mov dl, dil
add bl, -72
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
sbb bl, bl
test bl, 24
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 96
or al, dil
cmovnb ecx, eax
bts esi, 241
btr rdi, rsi
neg dl
and rdx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
