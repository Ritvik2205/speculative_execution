.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
or di, si
dec rbx
or esi, 88
adc al, 36
not si
sub sil, -36
lea esi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xor di, bx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 78
cmovle di, di
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
test sil, bl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
or sil, dl
cmovnp si, ax
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test rax, -344032571
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
bts rax, 157
cmovb edi, edx
sbb eax, 1081973675
sbb cx, 87
neg ebx
add al, sil
test rcx, -2118888343
cmp dl, 23
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
or bx, dx
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test rax, -344032571
xor rax, 92
cmp bl, 13
setnbe dl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
movzx rax, cx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
