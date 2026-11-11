.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx di, dl
adc rax, 1542637830
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
dec sil
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
xor eax, ebx
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 59
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 88
add bx, bx
sub dil, -10
mov bl, 55
cmp dx, cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
sbb bl, al
xor dx, ax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 80
test bl, 0
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
and eax, -24
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
add ecx, 18
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
test sil, 39
dec rdi
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 60
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
cmp di, dx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
imul dx
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 99
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], edi
btc rbx, rcx
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
add bl, 56 # instrumentation
cmovle rdi, rbx
inc esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
