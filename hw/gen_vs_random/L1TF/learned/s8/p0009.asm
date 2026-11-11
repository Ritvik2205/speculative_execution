.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
setno cl
cmovb edx, ebx
sub dl, -78
sub al, 26
cmp dl, -93
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 80
xor dx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
