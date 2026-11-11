.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or dil, sil
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
test al, 127
xor sil, -126
jmp .bb_0.1
.bb_0.1:
and dx, 3
xor sil, bl
or rax, -1523798580
jmp .bb_0.2
.bb_0.2:
or dl, dil
test rsi, 16
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
test edx, -372470678
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
