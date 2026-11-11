.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 359647041
or al, 74
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
test dil, -80
test eax, -409834435
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
