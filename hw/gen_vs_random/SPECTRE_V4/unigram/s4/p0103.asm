.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt esi, ecx
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
inc edi
or ecx, 102
not bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
neg sil
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 86
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 39
movzx rdi, dx
cmovl rdi, rdx
xor rsi, rbx
bswap edi
cmovno rbx, rax
adc cl, -54
add cx, 84
add rdx, 40
xor rdx, 106
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
test dil, -26
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
test esi, esi
btr rdx, rcx
btc rdx, 130
movzx di, dl
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdi
or dl, -26
cmovnz ebx, eax
or sil, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
cmovz rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
movsx eax, dl
add rbx, rdx
sub bl, 56
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
imul bx, ax, 48
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
add dl, 77 # instrumentation
cmovno dx, ax
cmovbe eax, edi
adc edi, -83
mov rbx, 35
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
