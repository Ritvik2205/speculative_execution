.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xor cl, -85
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
sbb al, -47
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
sbb eax, 2051746726
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
sub sil, -50
lea si, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
adc al, -58
xor cl, -85
cmovle di, di
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
btc rsi, 140
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
cmovz rbx, rsi
and dl, dil
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
test rax, -331426050
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
movzx rax, sil
and sil, dl
add bl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
test rcx, -2118888343
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
or sil, 79
mov bx, -31043
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rsi, rax
cmovp rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
cmp rax, -227205962
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
