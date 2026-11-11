.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, edx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
lea rbx, qword ptr [rsi + rax + 77]
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 51
lea si, qword ptr [rdx + rax]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 47
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
sbb cl, -11
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
