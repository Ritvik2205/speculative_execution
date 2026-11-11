.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
xor al, -19
jmp .bb_0.1
.bb_0.1:
or al, cl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
xor edi, 90
and ax, 5001
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or rax, -1561934807
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
bt di, ax
or cl, al
and cl, -19
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
