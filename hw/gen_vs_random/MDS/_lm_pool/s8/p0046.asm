.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
or al, dl
and rax, 498847670
test bl, cl
test dil, -80
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 29
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
test esi, 1857129931
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and al, sil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor bl, -61
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
