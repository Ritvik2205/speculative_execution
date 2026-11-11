.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -105
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
and dil, 98
jno .bb_0.3
jmp .bb_0.4
.bb_0.3:
lea rdi, qword ptr [rcx + rdx + 78]
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
setp al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 75
add al, 3
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
