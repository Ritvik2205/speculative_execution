.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
btr ecx, edi
or al, -75
and dl, dl
or sil, -78
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
test dl, 9
or rdx, -109
jmp .bb_0.1
.bb_0.1:
or bl, al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
bt si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
