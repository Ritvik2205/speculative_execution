.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs edi, edx
xchg rdi, rbx
mov al, 7
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
btr rdx, rax
adc dl, cl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
neg ecx
add al, -99 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdi]
adc rax, 1690546225
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
and rdx, 84
sbb al, 70
dec dl
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
bts esi, 18
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdx
or dil, -104
add rax, rax
btc di, si
and esi, edx
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
add bl, -43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
or al, sil
add bl, cl
imul esi, edx, 1
xor al, 118
cmp rax, -1070057082
cmovbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
adc bl, -20
xchg dl, al
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
cmovnbe rbx, rcx
and ax, 27239
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
cmovs dx, si
sub dl, bl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
dec rax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
