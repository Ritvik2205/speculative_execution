.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil
test bx, -1599
sub bl, al
cmovnp rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
adc bl, 89
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
xchg si, bx
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
add al, 118
cmovnle edi, eax
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
add cl, -42 # instrumentation
adc dl, bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
setno bl
cmovle ebx, edx
add rdi, -94
adc eax, -1513455903
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
cmp cl, 13
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 34
xchg eax, ecx
xor cl, al
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and bx, 95
dec bl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
imul rdi, rsi, 57
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xchg eax, ebx
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
setnle al
cmovle rdi, rax
cmp bl, 13
cmp ax, -15031
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
sub dl, dl
cmp al, al
xor dl, dl
test ebx, 1263899340
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
