.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb ebx, ecx
xchg rbx, rax
jmp .bb_0.1
.bb_0.1:
or al, -2
xor al, dl
xchg rax, rdi
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rsi + rcx]
xor dl, dil
and bx, 74
test al, -70
sub sil, -99
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
