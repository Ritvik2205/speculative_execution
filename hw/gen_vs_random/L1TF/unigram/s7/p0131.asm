.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, -1
sub rcx, rdi
sbb bx, 65
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
lea rsi, qword ptr [rsi + rcx + 67]
lea di, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
add si, -5
setb cl
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
