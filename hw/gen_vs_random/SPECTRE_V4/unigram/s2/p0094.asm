.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
cmovnz rcx, rbx
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
cmovp esi, edx
xor eax, 365940537
bts rcx, rdx
xor cl, -73
cmovnz rdi, rdi
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], edx
xchg esi, esi
cmovnl di, di
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 36
inc sil
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
movsx cx, cl
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
and si, cx
xor cl, 13
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 20
neg ecx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
add esi, 21
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
add bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and bl, dil
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
bt dx, 81
cmovnz rcx, rcx
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
btr rax, rax
cmp rdx, -49
xchg bx, di
add al, sil
cmovbe cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
