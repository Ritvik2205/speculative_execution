.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ecx, esi
test rdi, -1876639003
movzx rax, sil
imul cx, ax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
test sil, dl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
sub edx, 11
not rcx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
sub ax, si
cmovb edi, edi
mov edx, eax
xor ebx, 26
cmp bl, sil
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
xor sil, 56
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
sub rax, -701741274
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 51
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
cmovnz cx, bx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
or ebx, 86
add dl, 48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dil
btc rcx, rdx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
btc rcx, 71
mul ax
sub bl, cl
sub bl, bl
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
bt ax, 92
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
or al, -71
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
