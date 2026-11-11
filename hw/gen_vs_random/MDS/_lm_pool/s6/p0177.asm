.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, di
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
bts rdx, 200
or rdx, -48
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
btr rcx, 25
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
test bl, -114
or rax, 52
test dil, cl
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
and al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
