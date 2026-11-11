.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -55 # instrumentation
cmovnbe esi, edi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or al, 27
bts bx, 42
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
mov edx, esi
adc rcx, 57
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and ebx, esi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
mul ax
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
bt edi, 78
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
mov rbx, rdx
mul cl
sbb eax, -747044528
dec rdx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
adc bl, bl
bts esi, 107
btr rdx, rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
mov al, 82
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
cmovs edi, edx
adc dl, cl
adc bl, 0
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
btc di, si
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdx
and esi, edx
xchg dl, al
adc rax, 2071185388
cmovnbe rbx, rcx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
cmovs dx, si
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
and rdx, 84
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdi]
add bl, -43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
imul esi, edx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
