.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -13169
cmovz edx, ecx
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 30
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
cmovno dx, dx
sbb ax, -26881
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 69
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
sbb bx, 79
sbb dl, bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
cmovno si, si
add bl, bl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
cmovs ecx, edi
movsx edi, bx
adc al, 36
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and bl, 26
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and bl, dl
cmp al, cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
cmovnbe edi, edx
or rdx, rsi
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
test al, 80
cmp bl, 13
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
cmovs di, di
sub rax, -701741274
movzx rcx, si
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
