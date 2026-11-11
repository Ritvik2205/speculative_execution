.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, bx, 16
neg al
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 87
and dil, bl
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 58
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 35
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edx
btr ax, 109
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
bts eax, 6
adc dil, -48
cmovb cx, di
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
mov rbx, 98
sub bl, 56
inc al
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rsi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rsi]
neg eax
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 4
sub rsi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
cmovno cx, bx
btc edi, eax
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
sub rbx, rax
mov edi, ecx
cmp eax, 2
cmp dl, bl
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdi
xor al, al
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
movzx rbx, ax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
