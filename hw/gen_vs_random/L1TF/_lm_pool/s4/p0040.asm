.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
inc ecx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
adc bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
