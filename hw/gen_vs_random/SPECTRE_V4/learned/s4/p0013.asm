.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
or eax, 2007177863
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 29
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
test cl, dil
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 77
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
btr ax, cx
btc rbx, rsi
cmovz ecx, eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 63
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
and dl, al
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
mul edx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 48
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
adc dl, dil
bt edx, 53
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
add si, 4
test al, dl
imul dx
not bx
cmp dl, al
test bl, 0
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
btr rbx, 99
cmp bl, bl
cmp ax, -15409
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
imul rsi
cmp cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
