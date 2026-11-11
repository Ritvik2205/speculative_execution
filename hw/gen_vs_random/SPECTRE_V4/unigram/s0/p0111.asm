.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rcx, rcx
cmp dil, sil
sub sil, sil
and ebx, -4
cmovnz ax, si
sub rax, rbx
sub rcx, -74
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 44
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
bswap ebx
adc dil, bl
neg rax
movsx ebx, di
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], si
not esi
sub dl, -16
adc al, cl
xor edi, 127
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
or edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 97
or ax, ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
cmovz si, ax
cmp al, al
and dl, 24
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
cmp edx, 4
and rsi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and al, -87
mov edi, esi
xor al, sil
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
cmovb esi, edx
sbb bx, 87
cmovnbe rbx, rax
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
add ecx, 99
sbb esi, edx
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
test ecx, 860867711
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
