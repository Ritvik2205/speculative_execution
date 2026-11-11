.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rdi, -3495947874455269481
sub al, 54
add cx, 77
adc rax, 253624080
mov al, 124
sbb dl, cl
adc rdi, 98
or al, al
add cl, 28 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
adc sil, -63
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
inc dl
add dil, dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
sub al, dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
sub sil, al
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
xchg di, si
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdx
mov al, -71
bts cx, ax
bts rax, 11
xor bl, 126
or dil, al
bts cx, 135
or esi, 32
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
cmovnle dx, cx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
test sil, 68
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
cmp dl, sil
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
cmovnbe esi, eax
cmovnle rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
not al
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
