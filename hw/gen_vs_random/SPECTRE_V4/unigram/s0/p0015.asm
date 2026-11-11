.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
cmovnz ebx, edx
cmovnl ecx, edi
cmp cl, -80
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
cmp ebx, ecx
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 24
xchg rcx, rax
add bl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 40
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rsi]
xchg dil, bl
bt eax, 54
cmp sil, -100
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
dec bl
or bl, 80
sbb cx, 106
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
cmovbe ecx, eax
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
imul rbx, rax
add rbx, 56
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
test al, sil
inc cl
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
inc rsi
imul ecx, eax
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 60
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
and rdx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdx]
sbb al, 43
cmovbe rbx, rax
neg rax
mov bl, 58
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
not sil
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
movsx rbx, di
cmovle cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
