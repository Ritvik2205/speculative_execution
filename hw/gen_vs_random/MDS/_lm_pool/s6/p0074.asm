.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
test bl, cl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 25
and al, -54
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or al, al
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test al, dl
and eax, 943733866
test rbx, 81
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
