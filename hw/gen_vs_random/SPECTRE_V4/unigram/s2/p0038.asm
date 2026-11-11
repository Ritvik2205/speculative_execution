.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, dl
mov si, -8007
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
inc rsi
mov dx, ax
add sil, cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], di
or eax, -863161215
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 54
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
sub rcx, -99
sbb sil, -11
or bl, -86
add dl, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 87
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
or bx, -33
btr ecx, 5
test eax, 1600638830
bt ecx, 135
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdx]
not ax
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
cmovbe eax, edx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -117
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
cmovnbe rdx, rdi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
inc rax
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
sub ax, 24426
test al, cl
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
adc sil, dil
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
cmovno eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
