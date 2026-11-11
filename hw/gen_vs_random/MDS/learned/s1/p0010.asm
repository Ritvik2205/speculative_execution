.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or bl, dl
xor al, 9
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
xor bl, dil
xor al, 9
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
not sil
bt ax, 76
xor al, bl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
