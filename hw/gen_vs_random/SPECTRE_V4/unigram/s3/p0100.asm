.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 44
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
mul eax
or dil, -16
mov cl, cl
mul cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
xor ebx, -62
sbb bx, 94
sub di, bx
cmp ax, dx
and rcx, -20
cmp cl, bl
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
mov dl, dl
or eax, -863161215
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
cmovb rdi, rax
or rcx, 51
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rsi
bt rcx, rax
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 49
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
cmovl rax, rbx
cmovnz rax, rax
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
adc cl, cl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 35
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
sub edi, eax
movzx edi, si
sub si, -92
imul esi, eax
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rcx]
cmp esi, -84
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
