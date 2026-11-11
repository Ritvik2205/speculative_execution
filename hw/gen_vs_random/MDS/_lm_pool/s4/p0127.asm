.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
xor cl, -13
or al, al
xor bl, dl
or dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
or sil, cl
btc ebx, 149
or ecx, 39
or bl, -54
or dil, -78
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
xor cl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
