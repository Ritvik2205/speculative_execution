.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
cmovnp rdx, rdi
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, dx
not cx
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
xor al, 102
imul rdi, rdx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
cmp rdi, 93
sbb eax, 4
mov cl, cl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
xor bl, sil
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
mul cl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
add al, al
xchg bx, cx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 77
add bl, 38 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 88
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
btc ax, 13
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ebx
cmovle rbx, rsi
bts edx, 62
cmp eax, -92285311
xchg dil, dil
sub al, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
add dil, dl
and bl, -63
sub cl, -74
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
movzx ax, cl
and bl, 26
xor ecx, edx
xor al, 29
sbb dil, 87
test dil, al
sub eax, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
