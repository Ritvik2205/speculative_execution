.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
jmp .bb_0.1
.bb_0.1:
xor rcx, 71
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
test al, dl
jmp .bb_0.2
.bb_0.2:
test eax, -675944960
jmp .bb_0.3
.bb_0.3:
and al, dl
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and cl, cl
jmp .bb_0.4
.bb_0.4:
or cx, 39
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
