.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and dl, bl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor eax, 1034314125
or di, ax
sub sil, bl
sbb di, 99
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 50
and sil, sil
lea di, qword ptr [rdi + rbx]
btc ecx, 4
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
cmovl rbx, rdx
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
