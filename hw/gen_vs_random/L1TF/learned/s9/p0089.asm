.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
lea rbx, qword ptr [rdi + rsi + 11]
lea ebx, qword ptr [rcx + rcx + 94]
xor al, 16
lea rbx, qword ptr [rdx + rdi + 71]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and dil, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
test cl, 55
xor dl, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
