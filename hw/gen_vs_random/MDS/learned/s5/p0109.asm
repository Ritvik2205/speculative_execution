.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
cmovns ax, dx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
xor eax, 984871847
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test edx, -372470678
or al, -75
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
btr di, bx
or cl, 6
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
