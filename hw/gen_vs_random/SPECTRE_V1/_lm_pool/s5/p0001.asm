.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
sbb eax, 1392087754
lea si, qword ptr [rdx + rdi]
add al, -44
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 2
cmp dl, -115
add al, dl
sub al, -89
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
setnp dil
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
