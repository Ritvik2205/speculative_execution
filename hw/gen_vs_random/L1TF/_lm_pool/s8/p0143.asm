.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
cmovb di, bx
mov dil, al
jmp .bb_0.1
.bb_0.1:
xchg al, bl
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and eax, -409673666
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 92
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
sub rcx, -121
xor ecx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
