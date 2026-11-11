.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
cmovle edx, esi
test rax, -344032571
or al, 109
not bx
movzx ecx, cx
sub cl, bl
and ecx, 38
add dil, -71 # instrumentation
adc dil, al
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
sbb edx, 78
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
imul bx
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
test al, 80
xor bl, 93
dec bl
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
imul rdx, rsi
imul rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
adc bl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 53
add al, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], esi
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
cmovle rdx, rax
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
test dil, sil
and dl, 6
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
sbb ax, -19255
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
