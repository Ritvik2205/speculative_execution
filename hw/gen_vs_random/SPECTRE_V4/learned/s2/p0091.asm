.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -558243208
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
cmovnb rdi, rdi
cmovnle rsi, rdx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
imul edx, eax, 86
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
imul di, si
bt rax, rdi
and dl, bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
test rax, -331426050
test rdi, -1876639003
cmp dx, si
or al, -71
cmp ax, 23131
adc dl, sil
add si, 4
and dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and bl, dl
add ecx, eax
adc al, bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
test cl, -89
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
xor ax, 25554
cmp al, 81
xor esi, ebx
cmp rax, -120490246
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
