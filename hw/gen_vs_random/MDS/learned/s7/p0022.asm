.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 15
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
test eax, 1838539683
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rax, -2039117613
test al, 91
not cl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
