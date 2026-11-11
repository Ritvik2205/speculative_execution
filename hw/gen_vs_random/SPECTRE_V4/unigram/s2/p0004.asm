.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], 75
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
sub bx, ax
cmp sil, cl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
add al, -6
test al, 115
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
add ecx, 99
xor dx, 7
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
btc rdx, 178
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
or cl, sil
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
add cl, -50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
cmp cl, sil
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdi]
add cl, -69 # instrumentation
adc cl, cl
cmovp esi, eax
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
sub rdx, 12
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
or bl, bl
cmovnz rsi, rdi
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
test sil, dil
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
cmovnz edi, ecx
and al, 100
imul edi, ebx, 14
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
add sil, 54 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
sub ecx, edx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and al, 5
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
