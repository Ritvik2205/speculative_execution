.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edx, ebx
add al, dil
sbb sil, dil
movsx rbx, cx
add al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
sbb dl, dil
adc bl, 79
adc cl, bl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
mul dl
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], eax
add cl, dl
test cl, -10
btc ecx, eax
adc al, al
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
dec ebx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
or dl, sil
cmovnp ax, ax
add dl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
sbb bx, 87
test bl, 78
adc al, 116
cmp dl, al
and dil, -23
adc rax, rdi
add cx, cx
movzx eax, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
inc dl
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
movsx rbx, bl
movzx esi, sil
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
or rax, -897763206
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
