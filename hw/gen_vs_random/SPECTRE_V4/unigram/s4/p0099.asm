.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle edx, eax
btc si, 49
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
sbb rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
cmovno eax, esi
or al, dl
add edx, ecx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or al, 96
sbb cl, -104
test dl, dl
imul cx, si
mov rax, -8696242625349627833
sub ecx, 37
sub rcx, 26
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
add bl, -72
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 68
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
mul esi
cmovle cx, cx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
cmp rdx, 10
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 98
or bl, 3
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
sub rdi, 63
test ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
cmp sil, bl
dec al
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
test bl, dl
sub dl, al
sbb dl, -99
movsx ebx, ax
bts esi, 241
cmovle rdi, rcx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
