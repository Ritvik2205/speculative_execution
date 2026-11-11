.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
xor rsi, 22
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
xor dil, al
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
