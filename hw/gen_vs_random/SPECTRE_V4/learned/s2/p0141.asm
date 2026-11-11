.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
cmovnb esi, edx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
adc bl, 89
or dl, cl
bt rsi, rdx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 92
sub esi, 100
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 43
dec dl
sub sil, -50
cmovo esi, edx
inc rsi
cmovz edx, edx
or rax, rbx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
cmovnp ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
xchg edi, edx
mov rsi, rbx
test bl, cl
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
test rax, -344032571
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 37
cmovnbe rbx, rcx
not dl
cmovb edx, edi
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
add rdi, rdx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
