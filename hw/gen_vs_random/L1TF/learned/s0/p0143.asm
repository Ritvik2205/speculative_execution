.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor si, -50
jmp .bb_0.1
.bb_0.1:
or sil, -44
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jl .bb_0.4
jmp .bb_0.5
.bb_0.4:
add dl, dil
jmp .bb_0.5
.bb_0.5:
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 99
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
