.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
add al, 117
sub al, sil
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and cl, sil
and al, -68
xor al, 38
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
xchg dil, sil
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
