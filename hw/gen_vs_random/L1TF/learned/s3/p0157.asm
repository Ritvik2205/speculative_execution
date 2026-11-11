.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
and rdi, rcx
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
btr bx, dx
jmp .bb_0.1
.bb_0.1:
test bl, 12
jmp .bb_0.2
.bb_0.2:
and dl, 59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 97
jmp .bb_0.4
.bb_0.4:
lea dx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
