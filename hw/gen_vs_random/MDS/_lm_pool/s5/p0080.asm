.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or sil, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rdx, 36
and di, 91
xor di, 93
or sil, -49
or cl, dl
xor sil, 94
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
bt bx, dx
jmp .bb_0.2
.bb_0.2:
or al, cl
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
