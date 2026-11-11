.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
test al, -82
sub dl, -34
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 46
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and al, bl
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 54
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
