.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edx, dx
sub al, -97
cmovbe di, si
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 34
adc esi, -41
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 94
dec cl
neg eax
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
setb sil
sbb bl, -88
sbb rbx, rsi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
