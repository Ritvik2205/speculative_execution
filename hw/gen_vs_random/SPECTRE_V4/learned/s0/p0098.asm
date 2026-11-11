.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -906
test ax, -5170
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub bl, 17
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
or ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 23
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
sub ebx, eax
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
test cl, -89
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
inc esi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
cmovnbe rax, rcx
cmovb di, di
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
not al
sbb sil, 108
add ebx, esi
bt edi, ebx
cmovp esi, edi
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test dil, 52
imul esi, edi
mov rcx, 4219775168754920203
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cmp ax, -906
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
lea si, qword ptr [rdx]
add dx, -90
and al, -127
and al, 33 # instrumentation
cmovnle eax, edx
cmp ax, 23131
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
