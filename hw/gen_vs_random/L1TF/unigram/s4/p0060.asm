.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
xchg bx, ax
sbb dil, dl
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
not rbx
sbb dx, 44
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
or edx, edi
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 27
test dl, al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
test rbx, 66
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
