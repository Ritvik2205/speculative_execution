.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
cmovnl ax, di
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
xor al, 77
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
or cl, 100
bt rcx, rcx
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
cmovo cx, di
bts rax, 117
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
or si, 0b1000000000000000 # instrumentation
bsf di, si
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rax, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
xor ax, 24729
cmovo cx, bx
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
bts rax, 117
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
xor ax, 24729
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 48
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
cmovnbe edi, ebx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
xchg si, di
or al, -8
xchg bl, dil
mov bx, 82
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovle rdi, rsi
dec bl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 48
cmovl rdi, rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
bt ebx, 107
and esi, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
