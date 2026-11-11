.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and al, dl
or al, 25
xor cl, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
xor al, bl
and sil, cl
and cl, sil
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
test rcx, -613256812
and al, bl
test eax, 343548072
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
