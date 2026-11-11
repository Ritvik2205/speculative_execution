.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rdx]
and dl, dil
and eax, 1167476476
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
and dl, -98
sbb rax, -1477844571
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor al, 14
imul rsi, rbx
adc dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
