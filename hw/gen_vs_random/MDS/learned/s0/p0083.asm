.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
or eax, esi
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 48
and al, 82
test eax, 343548072
btr bx, di
xor rsi, -117
and al, -114
jmp .bb_0.1
.bb_0.1:
and di, 91
or cl, al
and bx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
