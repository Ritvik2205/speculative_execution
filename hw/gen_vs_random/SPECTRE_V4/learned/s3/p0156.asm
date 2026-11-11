.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 72
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
bt ebx, ecx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
xchg ecx, ebx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 30
add dil, 16
sub rbx, 64
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 44
add al, 5
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
inc dil
bt ax, bx
add bl, bl
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
inc edx
btc cx, dx
movsx eax, cx
adc al, 69
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
sub cl, 116
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
adc al, 36
cmovl rcx, rsi
cmovnp ecx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
imul cl
add dl, -114 # instrumentation
cmovl cx, di
sbb ax, -26881
test eax, -544019457
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
movsx rdi, cx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 66
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
btc cx, ax
and rdi, -2
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
inc esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
