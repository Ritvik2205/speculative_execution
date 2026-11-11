.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
or al, 24
xor sil, cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
btr cx, 9
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
xor sil, 110
or bl, bl
or bx, 1
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test sil, 17
xor cl, 55
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
