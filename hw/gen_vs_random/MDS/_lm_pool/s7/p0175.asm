.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
or sil, -78
or rax, 52
or al, bl
or rax, 1461812833
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
test bl, -14
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
not dl
or al, -17
or al, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
