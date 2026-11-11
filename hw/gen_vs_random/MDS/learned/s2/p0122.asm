.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
or bl, al
and rax, -731384280
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and di, 99
btc bx, 104
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and al, 49
test eax, 158941032
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
test rbx, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
