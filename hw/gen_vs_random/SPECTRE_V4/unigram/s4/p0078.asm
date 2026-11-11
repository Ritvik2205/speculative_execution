.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, 3
sbb bl, dl
add dx, -90
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
adc bx, -89
cmp bl, cl
imul rdi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
cmp cl, dl
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and bx, 95
sub bl, 17
or ecx, edx
sbb rcx, 28
cmp rsi, 74
inc ecx
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
test ecx, 58
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
test dx, di
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 60
adc al, dil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
or dil, 91
cmovo bx, si
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
cmovnbe rax, rcx
test rcx, -2118888343
test ebx, -595096626
add cl, al
and rdx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdx]
cmovns ax, cx
add edx, edi
movzx rbx, si
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 45
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
cmovle rdx, rsi
add rax, rbx
xor cl, -54
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 69
btc ax, dx
add dl, 41
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
