.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, 2
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
cmovnb esi, esi
test dl, dl
cmovs ebx, eax
add edi, esi
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
setnle dil
adc ax, ax
cmp cl, 74
sub rdx, 22
lea di, qword ptr [rax]
cmovle edx, eax
cmovnl si, ax
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 2
cmp al, -23
cmp cl, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
