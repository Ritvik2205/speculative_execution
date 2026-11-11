.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
cmp eax, 2
dec bl
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
adc ax, 15251
imul si, ax, -75
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmp eax, 64
sub sil, -35
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
btr rdx, rsi
mul dx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
cmovnbe edi, esi
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
bts rdi, 49
add bl, -38
cmovnbe eax, esi
cmp esi, -84
adc al, 43
cmovz rbx, rdx
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
cmovnle rcx, rcx
sub si, bx
inc dl
and rdx, 0b1111111111111 # instrumentation
test rdx, rbx
imul dl
add al, cl
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
xchg cx, ax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
bts edx, 116
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and bl, dl
cmp bl, al
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
cmovb ebx, ecx
add bl, al
and eax, -1948401947
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
