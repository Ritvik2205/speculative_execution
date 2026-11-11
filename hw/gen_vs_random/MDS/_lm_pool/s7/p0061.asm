.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
btr ebx, edx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
xor eax, -127
and cl, cl
xor cl, 83
and bl, dil
and sil, -69
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
bts edx, 189
or rax, -689609688
or bl, al
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
or rax, -1523798580
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
