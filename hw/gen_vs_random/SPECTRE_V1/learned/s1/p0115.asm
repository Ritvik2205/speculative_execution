.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
add dl, -105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
adc cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
or dl, cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
xor eax, 1034314125
sub sil, bl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
imul bl
setno dil
cmovs rax, rbx
adc bl, 70
and bl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
not si
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
cmovno ebx, edx
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
sub sil, -55
cmovnz rcx, rbx
and rax, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
