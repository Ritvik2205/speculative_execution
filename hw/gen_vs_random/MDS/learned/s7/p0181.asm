.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, ax
test bl, -9
test al, 91
xor cl, 15
test bl, -9
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
xor bl, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
test ebx, -2015966884
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
