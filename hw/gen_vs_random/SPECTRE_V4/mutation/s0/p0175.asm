.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
movzx di, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
xor esi, -82
cmovnle bx, dx
adc eax, -3570960
sbb al, -4
adc ax, 25365
and al, 59
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], dx
add bl, -38
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
xor al, -82
btc edx, 108
and al, bl
cmovnle rsi, rdi
cmovs eax, edx
xchg esi, eax
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
bts dx, cx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
test ecx, 860867711
cmovnp esi, edi
movsx di, dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rdx, rcx
movsx rdx, ax
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
mov bl, -69
adc cl, 111
add ax, 6414
adc dl, al
cmovnb rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
add dl, 74 # instrumentation
cmovle edx, ebx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
cmp rdx, -49
cmovno dx, ax
sub al, 55
inc cl
cmovnl cx, dx
and si, -74
cmovle rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
