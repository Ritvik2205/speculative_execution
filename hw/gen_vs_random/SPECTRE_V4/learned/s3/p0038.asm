.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
lea di, qword ptr [rdi + rdi + 97]
sub al, dl
cmovp rbx, rsi
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
cmovle ebx, esi
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdx
adc rbx, 2
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
sub dl, dil
sub dil, -10
adc bl, 89
sub al, 50
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 97
sub al, bl
not esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
