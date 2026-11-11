.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 29
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
xor cx, si
sbb dx, 97
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 27
add rdx, rax
dec rbx
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
xor cl, al
add sil, sil
sbb ebx, 97
test rax, -344032571
cmovnp eax, eax
cmovs ax, ax
not rsi
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 1
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
neg al
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
cmp rbx, 56
cmovo rax, rsi
cmovnl dx, cx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 13
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
movzx rax, dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 77
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
or edx, -127
adc ecx, -12
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, -10 # instrumentation
mov dx, 96
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
adc rdx, 30
adc rax, rcx
btr rcx, rax
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], cx
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sbb edi, 20
add di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
