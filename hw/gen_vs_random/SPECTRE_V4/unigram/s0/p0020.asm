.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, rdx
cmovnbe eax, edx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 31
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
dec cl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
xor al, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
cmovnbe rdx, rbx
cmovb si, di
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
bt ebx, 88
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 6
cmovnle ebx, edx
add sil, 74 # instrumentation
cmovle esi, edi
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
cmp dil, -29
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
cmovz rax, rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
sbb dl, 75
add cl, 71 # instrumentation
cmovnle rdx, rcx
and dx, -107
sub cl, al
add dx, 11
cmp rbx, rcx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 92
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
adc ecx, 55
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
movzx eax, al
add cl, dil
adc dl, al
and sil, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
