.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 93
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
xor dl, 19
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
or di, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
