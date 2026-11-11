.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
sbb dl, dl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 59
xchg rax, rcx
not ax
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
add cl, -37 # instrumentation
adc esi, 50
cmovnz ebx, eax
cmp si, 75
not sil
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cmovle ecx, edx
add dl, 118 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rax], esi
sub al, al
xor ebx, edi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
movsx ebx, cl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 68
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
add ebx, 3
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 61
sbb rdi, 93
or ebx, edi
cmovb edi, edi
cmovb eax, edx
xor eax, -437098167
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
test di, 100
cmovns eax, edi
cmovns rdx, rbx
mov rax, -8696242625349627833
imul dl
imul cl
imul edx, ecx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 90
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
cmovnle ecx, eax
mov sil, dl
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
sbb dil, 45
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
