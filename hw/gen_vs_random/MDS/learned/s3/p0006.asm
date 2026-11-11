.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
test al, 66
xor bl, 67
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 80
jmp .bb_0.1
.bb_0.1:
and cx, -8
test bl, dl
not sil
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
