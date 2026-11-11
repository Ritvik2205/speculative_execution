.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 77
cmovle rdx, rax
test al, 66
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 19
add dl, bl
or bl, 30
neg cl
xchg dx, si
sub rdx, 22
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
adc esi, 90
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 88
not bx
add rbx, rcx
xor rbx, rdi
and dil, dl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
movzx rcx, al
bts ecx, 13
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rbx]
cmovnle bx, bx
cmp ax, 23131
add edx, 41
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
xor bl, 93
cmovnp cx, dx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
cmovns ax, dx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
add dl, -94 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
sub sil, dil
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rbx]
cmp al, -52
cmp al, 70
cmovnbe esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rcx
cmp dl, 82
sbb sil, 108
and di, 85
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
