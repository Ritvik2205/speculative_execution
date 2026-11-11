.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -75
test sil, -55
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or bl, bl
test sil, bl
and al, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and al, dil
test eax, -1634766116
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
xor si, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
