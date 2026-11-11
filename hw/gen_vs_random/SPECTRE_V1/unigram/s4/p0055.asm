.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, 3
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 48
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -6
lea dx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rdi, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
