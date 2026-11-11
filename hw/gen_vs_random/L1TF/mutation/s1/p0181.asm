.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
lea edx, qword ptr [rbx + rbx + 24069]
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
jmp .bb_0.1
.bb_0.1:
xchg cl, cl
test al, -104
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
sbb ebx, edx
bts ecx, 225
lea rax, qword ptr [rbx]
movzx edx, dx
xchg dil, bl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
btc bx, 173
mul rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
