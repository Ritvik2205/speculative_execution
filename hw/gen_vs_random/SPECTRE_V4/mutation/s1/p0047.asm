.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 89
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
or al, sil
dec rax
neg ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
dec dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add al, -99 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
add rax, rax
xchg rdi, rbx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and ax, 27239
xor al, 48
sbb al, 102
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
add bl, cl
cmp rax, -1547540200
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
cmovbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
test al, -24
btc rdx, rsi
and dl, cl
add al, bl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
mov bl, al
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and al, al
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
sbb al, al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
cmovnl bx, bx
sbb si, si
cmp cl, -105
inc rax
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
add cl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
imul edx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
sub eax, -672265139
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
