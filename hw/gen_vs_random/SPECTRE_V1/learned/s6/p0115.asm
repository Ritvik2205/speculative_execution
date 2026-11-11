.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
inc al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
sbb al, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
or eax, 848176907
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
