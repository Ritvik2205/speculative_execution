.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -125
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 498847670
and dl, -73
xor cl, 98
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
not al
and dl, dl
or al, -24
and eax, -829294476
xor dl, 40
or bl, 100
bts edi, 248
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
bt di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
