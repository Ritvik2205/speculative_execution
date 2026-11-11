.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 37
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
add al, 42 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
btc eax, 62
add al, 19
adc cl, al
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 58
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 26
add al, 91 # instrumentation
adc al, dl
add dl, 45 # instrumentation
cmovbe rbx, rdi
add rax, 1049076260
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
imul sil
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
inc al
movsx rcx, dil
sbb sil, dl
add al, 20 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
cmovbe rsi, rcx
and rdi, 45
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 79
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
sub dil, bl
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
inc ebx
and bl, sil
or cl, 83
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ebx
bt ax, 248
cmp dx, -67
cmovbe ax, bx
cmovnp dx, bx
movsx cx, dil
xor cx, -80
add bl, -30 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
mov rax, -8100960678429780222
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
