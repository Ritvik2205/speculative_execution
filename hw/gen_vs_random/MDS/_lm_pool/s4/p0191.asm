.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
bts rbx, rdi
and rdx, 15
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
not al
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rax, 79
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
