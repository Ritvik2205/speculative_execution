.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
movzx dx, bl
imul eax, ecx, -17
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
adc sil, -63
mul rbx
xor rdx, 106
or cl, 83
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
neg rdx
not dl
mov edi, -1866088512
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 100
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rcx
add al, 105 # instrumentation
cmovl esi, edi
inc eax
sub dil, cl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
test cl, -119
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 77
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
imul rbx, rbx
and dl, 124
and sil, -84
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
add sil, bl
add dl, 122 # instrumentation
cmovz dx, ax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
test bl, al
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
xchg ebx, esi
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
