.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
setnle sil
test edx, 6
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
adc rax, rax
or dl, 73
xchg ecx, edi
neg eax
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 25
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
btr rdx, 161
setle dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
