.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
or al, -57
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
imul al
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and sil, -90
lea rax, qword ptr [rcx]
sbb al, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
