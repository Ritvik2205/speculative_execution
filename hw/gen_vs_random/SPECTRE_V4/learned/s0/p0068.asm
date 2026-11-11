.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
dec rbx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
add cl, cl
dec rdi
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
add dl, al
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 89
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
sbb rax, 183833426
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 19
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
not rbx
bts bx, si
test al, 80
add cx, cx
not rdx
sub ecx, 71
sub dil, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
cmovo si, bx
bt dx, 35
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
cmp ax, -906
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
add dl, -99 # instrumentation
not eax
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
sub sil, -50
movzx cx, bl
sub al, sil
sbb cl, dl
xchg bl, dl
and rax, 64
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
movsx rsi, bx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
movzx rcx, di
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
