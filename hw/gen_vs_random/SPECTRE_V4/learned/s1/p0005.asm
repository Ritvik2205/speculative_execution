.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 40
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
or dl, dl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 30
add al, dl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 63
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
sbb eax, 2051746726
btc rcx, 17
add al, -6 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
sbb rax, 183833426
xor si, di
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
sbb rax, 183833426
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 7
mov al, 86
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
or si, 18
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
not si
sbb bl, 57
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
bts esi, 241
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
adc rbx, 81
or dl, al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmp ax, 23131
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor dl, dil
or si, dx
cmovnl rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
test sil, 21
cmp ax, -15409
test si, di
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
