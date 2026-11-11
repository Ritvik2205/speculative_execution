.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edi, di
test al, 72
cmp ax, 28568
and dl, -11
cmovo si, cx
test ax, -6584
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
add cl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
dec cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
add bl, -24 # instrumentation
cmovnbe cx, cx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
adc dil, -17
xor dil, -23
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
sub eax, -672265139
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
test ax, -14473
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and al, 49
cmovnp cx, si
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
movsx ebx, dx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
xchg ebx, esi
test cl, -52
test bx, 24072
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
cmovbe rax, rdi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
cmp rbx, rsi
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
adc cl, -4
add al, -4
xor rdx, rcx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -41
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
