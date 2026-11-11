.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, 1081973675
cmp al, -52
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
dec rcx
cmp cx, di
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
dec esi
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 63
dec rax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 73
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
cmp sil, 88
cmovnp si, dx
test bl, dl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rcx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rcx]
cmovnbe rbx, rdx
imul rdi, rbx, 90
mul cl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
sub esi, 17
cmovnle rbx, rbx
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
cmovnle eax, esi
adc bl, dl
imul rdi
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
