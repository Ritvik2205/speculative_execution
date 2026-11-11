.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, edx
sub ax, si
and al, dl
cmovno rcx, rdx
lea ax, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
lea di, qword ptr [rbx + rax + 49]
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
xor rax, 376589024
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
