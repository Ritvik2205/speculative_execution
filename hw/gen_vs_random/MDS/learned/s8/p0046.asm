.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 71
and dil, al
or ax, -4210
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
or rdx, -48
and dl, cl
test cl, -123
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
or rcx, -17
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test bl, sil
xor dil, -3
or ax, -23697
xor al, -4
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
sbb al, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
