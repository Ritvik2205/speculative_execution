.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 59
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
xor sil, bl
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 49
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 51
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
cdq
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
cmp ecx, 93
lea rax, qword ptr [rcx + rsi + 5]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add cl, -35 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
