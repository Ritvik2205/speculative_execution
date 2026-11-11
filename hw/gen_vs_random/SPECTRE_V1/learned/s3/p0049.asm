.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
cmp bl, al
inc cl
and dil, 98
and bl, -43
xchg rsi, rdx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
setnle dl
lea rdx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
