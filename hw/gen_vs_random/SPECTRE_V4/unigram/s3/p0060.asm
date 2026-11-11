.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
add sil, -97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
movzx edx, dl
or rsi, rdx
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and cx, -117
movsx rdx, bx
and sil, al
and rax, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
not rbx
sbb rcx, -73
sub rdi, rbx
test dil, 64
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
cmovns cx, ax
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
cmovb ecx, esi
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
adc sil, -63
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
adc dil, cl
and rbx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
sub di, 9
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
add ebx, -57
adc cl, dil
sub cl, 18
xchg ecx, edx
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
movsx rax, di
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
sub eax, -494922880
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
sbb bl, bl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 59
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
or dx, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
