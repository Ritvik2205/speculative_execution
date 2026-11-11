.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, dil
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
cmovnb rdx, rcx
adc rdx, rcx
cmp al, al
test rax, -331426050
imul ebx, edx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 48
xchg rax, rdx
add bl, -72
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
bt edi, 88
sbb al, -47
sbb dl, -99
cmp dl, dl
bts esi, esi
cmovnp rdx, rbx
imul rdi
or al, al
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
cmovnb edi, edx
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 14
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 5
add dl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dil
cmovb ebx, ebx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 5
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 81
add dl, 41
and bl, 26
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
test al, 80
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
test di, 35
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
cmovle ax, ax
sbb eax, -1688332460
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
