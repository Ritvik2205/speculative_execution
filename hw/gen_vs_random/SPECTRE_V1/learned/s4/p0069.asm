.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
xchg ecx, eax
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
lea di, qword ptr [rax + rcx + 43]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
sbb dil, dl
xor al, 54
xchg eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
