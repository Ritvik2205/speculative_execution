.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
bts ecx, eax
add cl, 8 # instrumentation
adc al, bl
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovle rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
movsx ebx, ax
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
or si, cx
mov rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 64
sub rax, -701741274
add sil, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
cmovnl di, bx
cmovns ax, ax
and sil, dl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
test eax, -558243208
sbb sil, dl
cmp ax, -15409
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 5
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
not rax
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
or sil, al
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 55
cmovle rbx, rax
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and cl, dil
bt esi, 227
or dl, dl
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
sbb sil, 108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
