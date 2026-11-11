.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
imul ecx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 3
imul esi, edx
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
movzx cx, al
adc rbx, rax
cmovnb ebx, ebx
cmovnbe esi, eax
sbb cl, dil
and cl, 126
inc ecx
test sil, bl
bt si, 114
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
btr rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
movsx ecx, cx
test cx, 19367
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
add cl, -84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
cmovp eax, edi
imul cx
dec cl
and rsi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rsi]
and cl, bl
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
or al, al
and bl, -60
and rdi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdi]
add bl, dl
adc cx, bx
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
