.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
cmovns dx, ax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
or dil, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
or al, bl
or rax, -1561934807
bt di, ax
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
btr di, bx
or sil, cl
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
