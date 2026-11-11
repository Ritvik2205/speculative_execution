.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
xor sil, cl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
xor al, 9
test dil, bl
test bl, -9
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovle edx, ecx
cmovb edx, esi
jmp .bb_0.1
.bb_0.1:
btr edx, ebx
btc ebx, eax
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
test rbx, 63
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 81
cmovp bx, si
or edx, -78
bts rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
