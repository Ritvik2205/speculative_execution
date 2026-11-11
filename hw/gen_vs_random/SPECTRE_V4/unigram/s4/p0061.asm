.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
cmovle ecx, esi
xor ax, 28088
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
add bl, -18 # instrumentation
mov rcx, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 44
or dx, 4
test ebx, 1263899340
mov bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
xor al, 56
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
movzx dx, bl
xchg rsi, rdi
btc rdi, rsi
imul rdx, rax
mov bx, -31043
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
adc bl, 89
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
bts eax, ebx
add bx, 110
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 40
add al, 110 # instrumentation
movsx di, al
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 5
and dil, 96
cmovns si, cx
and sil, dil
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 36
sbb ax, -26881
imul bl
imul edx, eax, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
