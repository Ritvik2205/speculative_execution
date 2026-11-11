.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
xor esi, 99
test cl, al
jmp .bb_0.1
.bb_0.1:
or al, sil
test al, bl
and di, 91
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test bl, 65
or bl, al
btc dx, 146
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
or rax, -689609688
and sil, -69
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
