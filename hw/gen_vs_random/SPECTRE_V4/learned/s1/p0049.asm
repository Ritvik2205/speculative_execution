.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
adc esi, 90
or bl, sil
imul rsi
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
test al, dl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
lea rbx, qword ptr [rdx + rbx + 57]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
btr edx, eax
sub dl, bl
and rbx, 110
sbb bl, 57
xor eax, -164167056
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
or ax, -12775
xor bl, dl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
not dx
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
add bl, -72
sbb dl, al
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor edi, 95
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
add bl, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmp bl, cl
cmovnl rbx, rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 94
sbb dl, sil
not dl
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
bswap edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
sub dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
