.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
or sil, dl
add cl, -127
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
xor eax, 55
cmovnle rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
