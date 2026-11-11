.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 20
imul esi
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
adc bx, 52
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 1
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
cmovp di, si
add dil, 105
add dl, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], esi
add cl, -9
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
cmovs ax, bx
or rbx, rsi
add bl, 54
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rsi
mov sil, al
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
adc di, ax
movzx rsi, ax
movsx bx, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 33
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 14
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
movsx bx, dl
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
adc cl, cl
adc dil, dl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
neg rdi
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
cmp sil, sil
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -115
mul cx
xor ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
