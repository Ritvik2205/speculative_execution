.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add cl, -117 # instrumentation
cmovs rdx, rdi
cmovs dx, dx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 88
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
movsx eax, dx
add cl, 110 # instrumentation
movsx ax, cl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
cmovnle edi, edx
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
mul rbx
cmovnle bx, ax
mul dl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
cmovnbe rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], bx
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
add sil, -71 # instrumentation
adc sil, dl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rcx
adc sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
movzx ax, dl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
cmovnp cx, bx
movzx cx, dil
xchg rdx, rbx
and al, -36
neg bl
cmp sil, dl
imul rbx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 71
cmovns si, si
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
btc dx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
