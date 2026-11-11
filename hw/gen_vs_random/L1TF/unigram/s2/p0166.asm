.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdi + rsi + 30]
lea rbx, qword ptr [rdx + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -9758
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 84
imul bx, di, 42
lea rcx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
add dl, 43 # instrumentation
lea rdx, qword ptr [rbx + rax]
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
