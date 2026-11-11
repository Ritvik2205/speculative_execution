.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
test bl, -14
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and ax, -4410
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 38
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or al, al
or bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
