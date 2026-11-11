.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 18
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
sub al, -66
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, dil
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
add sil, bl
cmp al, 77
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 78
lea ecx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
