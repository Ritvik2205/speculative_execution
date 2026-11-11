.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
or ax, -6817
test bl, dl
btr ebx, edi
or al, 74
or rax, -689609688
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
or si, -12
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and dl, -73
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
