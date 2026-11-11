.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
cmovbe bx, dx
add dl, 45 # instrumentation
cmovbe rdx, rsi
xor rbx, -99
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
mov cl, bl
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
test cl, bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg bl, bl
btr rdx, 16
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
sub rdi, 105
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
xchg edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
cmp esi, -84
sub rcx, -74
add dl, -4 # instrumentation
cmovp ax, si
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
imul cx, ax, 85
dec edi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
adc rcx, -99
sub eax, -1804712207
or al, bl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 30
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
cmp dl, 45
imul edx
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 74
sub al, 86
cmovns rax, rcx
btr ax, dx
imul bl
mov rcx, 75
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
cmovle rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
