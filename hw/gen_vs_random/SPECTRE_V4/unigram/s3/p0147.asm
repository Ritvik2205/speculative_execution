.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
imul bl
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
test bl, sil
add edx, esi
not rax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], cx
sub rsi, -104
cmovb di, ax
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
xor ebx, 40
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
xor sil, 47
btr rdx, rbx
btc rsi, 77
and sil, dl
add al, 47 # instrumentation
cmovnle di, ax
movzx bx, dl
test dil, dl
sub esi, -10
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
xchg dil, dil
xor al, sil
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
bts eax, 12
movsx esi, cl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
sub esi, -10
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
cmovle rdi, rdx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and al, 49
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
and sil, sil
and dil, dil
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
or cl, cl
btr edx, 160
adc ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
