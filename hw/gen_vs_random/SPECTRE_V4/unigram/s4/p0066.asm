.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 20
and cx, -117
cmovnp di, bx
sub eax, 490935921
xor sil, dl
adc edi, -83
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
sub cl, al
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 44
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
not bl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
sub rsi, -48
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 31
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
mul al
adc dl, 25
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
cmovnb rcx, rdi
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
add al, 20 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
sub edx, eax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
mov dil, al
xchg edx, edi
add al, -79 # instrumentation
adc rbx, 11
add dl, 109
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
cmp dil, -92
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], 50
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
not rdx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
sbb rdi, 34
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
