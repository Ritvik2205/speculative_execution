.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
xor rbx, 22
test al, -104
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
add si, -5
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
lea si, qword ptr [rbx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
