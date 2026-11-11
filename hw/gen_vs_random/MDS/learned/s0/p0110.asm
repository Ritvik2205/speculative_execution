.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
xor ax, -23364
and di, 91
and dl, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or bl, -54
or bl, al
and eax, -85386306
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and di, 99
xor cl, 83
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
