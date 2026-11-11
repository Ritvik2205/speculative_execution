.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -14386
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
or rbx, rax
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
mov al, sil
bts ecx, ecx
xchg dil, cl
neg cl
mov edi, ecx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
dec dil
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], eax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdx
movzx rax, dl
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
sub sil, -35
add rax, -1121139858
and dl, 126
add edi, 81
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
xor bl, -126
add al, -109 # instrumentation
cmovns ax, di
add sil, cl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and rbx, 9
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
cmovs rax, rcx
add bl, 126 # instrumentation
cmovb edi, edx
or dl, cl
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
sub dl, dil
cmovnp bx, di
neg al
or rcx, 41
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
xor dil, 117
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 2
xchg rcx, rdx
cmp rsi, 74
sub ax, dx
inc dl
cmovo edx, ebx
cmovnl cx, dx
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
or di, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
