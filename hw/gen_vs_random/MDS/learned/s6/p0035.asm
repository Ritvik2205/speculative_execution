.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
cmovle ax, di
xor cl, al
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
or sil, bl
and al, cl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or edx, -78
test rax, -708244380
and al, bl
or dl, -89
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
