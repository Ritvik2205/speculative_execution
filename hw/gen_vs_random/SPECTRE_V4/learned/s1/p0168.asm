.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, ebx
dec bl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
movsx dx, cl
dec cl
add cl, dl
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and bl, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
test edx, 1479885278
cmp al, 115
cmp al, 114
test ax, 19171
and al, 92
sbb al, 57
cmp rax, 2052654950
add al, -55
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
test sil, 16
inc bl
dec al
and bl, -119
or al, cl
xchg ebx, edi
mov cl, dl
add bl, al
xor eax, 308288205
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
xor dil, cl
and rax, 1827025056
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
