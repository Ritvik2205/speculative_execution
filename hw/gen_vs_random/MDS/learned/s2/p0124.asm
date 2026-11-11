.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
bts ebx, 205
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
cmovnz edi, ecx
xor bl, dil
and dl, dl
and eax, -85386306
jmp .bb_0.1
.bb_0.1:
or cl, 30
xor rax, -345061362
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
