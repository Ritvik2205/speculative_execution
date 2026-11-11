.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 10
sbb cl, sil
test al, bl
btr rax, rax
and sil, -3 # instrumentation
cmovnb si, dx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
cmovle esi, edx
add sil, 34
or dl, dil
cmovnp rbx, rdx
and sil, 65
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
or al, -8
xor bl, bl
cmovz rbx, rax
xor eax, 1170472196
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and dl, al
or bx, 55
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
sub dl, 36
jmp .bb_0.1
.bb_0.1:
add al, 71 # instrumentation
setp sil
or sil, -8
adc dx, 76
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
mul cl
cmovnbe eax, esi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
and sil, 65
and sil, -94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
