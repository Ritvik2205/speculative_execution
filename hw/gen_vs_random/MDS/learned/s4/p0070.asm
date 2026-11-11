.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
test sil, al
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
or cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and dx, 3
xor rdi, -9
or ecx, 13
xor dil, -124
or bl, -62
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
