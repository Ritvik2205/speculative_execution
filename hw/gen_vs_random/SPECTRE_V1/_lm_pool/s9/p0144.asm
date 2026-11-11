.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
setno al
add al, sil
add dl, 47
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
or al, dil
and dl, -92
sbb al, -114
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
