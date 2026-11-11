.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -24 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
sub sil, al
add dl, -86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
lea ax, qword ptr [rax + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
btr rdx, 76
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bx, 83
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
adc ebx, 93
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], edx
test sil, 97
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
