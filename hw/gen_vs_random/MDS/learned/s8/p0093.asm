.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
xor ax, -12492
or bl, -125
xor ax, -23364
and bl, 68
or al, bl
or esi, -110
or rax, -689609688
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and cl, bl
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
test rax, 337705873
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
or cl, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
