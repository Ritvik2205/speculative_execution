.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
and rax, -731384280
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
btr edx, ecx
or al, bl
xor al, -19
and dl, dl
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
xor cl, -13
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
or al, 74
test eax, 1838539683
cmovnp rcx, rdi
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
