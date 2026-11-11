.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
or bl, -88
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
bt edx, ecx
lea rax, qword ptr [rcx + rdx]
add cx, 20
and al, -68
jmp .bb_0.1
.bb_0.1:
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
