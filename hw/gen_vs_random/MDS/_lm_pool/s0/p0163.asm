.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
btr bx, si
test al, dl
or dil, 16
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test eax, 343548072
or rax, 52
or dil, -76
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
jmp .bb_0.1
.bb_0.1:
or al, -17
or si, 94
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
