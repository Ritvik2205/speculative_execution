.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
and cl, -57
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
lea di, qword ptr [rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
cmp bl, al
mov cl, sil
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
