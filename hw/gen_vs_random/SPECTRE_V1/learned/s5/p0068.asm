.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
add cl, sil
mov sil, bl
cmp esi, 8
sbb cl, 105
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or cl, -98
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and al, -23
and bl, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
