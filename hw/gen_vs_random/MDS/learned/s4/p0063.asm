.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
or al, al
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and cl, cl
and dx, 3
or bl, -125
or al, 25
or dil, sil
test dil, 46
test eax, 343548072
or dx, 125
btc si, 99
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
