.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb si, 36
or al, -88
imul eax, ecx, -17
xor dx, di
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
add al, -4
and cl, -101
bts esi, 18
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
xchg ecx, ebx
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
cmovo cx, dx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 26
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
cmovno si, di
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 78
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rbx
dec dl
imul esi, eax
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], 16
cmovno rax, rcx
cmovnbe rsi, rax
cmp rcx, -121
bt di, ax
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
sub ebx, 99
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
or eax, 1470564945
and rsi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
sub dil, dl
adc ecx, 114
mov edx, -950755477
sub dil, al
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 41
add dl, 109
add al, -7 # instrumentation
btc cx, bx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and al, 41
sbb al, -43
sub dl, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
