.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
lea di, qword ptr [rdi]
xchg ebx, ecx
test al, dl
and al, -23
mov dl, dil
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
cmp dl, 119
sub dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
