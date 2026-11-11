.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 40
add cl, dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 25
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and bx, 95
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
xor bx, si
cmovnbe rcx, rdx
add rdx, 20
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
test esi, 31
not cx
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
test bl, 0
sbb bl, sil
mov rax, -8696242625349627833
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
not dx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
sbb sil, sil
mul cl
adc al, 69
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
adc eax, -79
test bl, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
xchg rbx, rsi
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
add dl, al
imul rbx
neg dl
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
xor cl, al
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
sub al, 98
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
sub edi, 70
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
