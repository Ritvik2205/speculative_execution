.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 49 # instrumentation
cmovp rdx, rcx
cmovnl ax, bx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
or ax, 127
or di, 0b1000000000000000 # instrumentation
bsr ax, di
xor cl, 98
bt dx, di
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
bts ax, di
cmovs rax, rdi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 67
bt rax, 92
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rsi]
and dl, 16 # instrumentation
cmovle edi, edi
btr ax, 193
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
test rdi, 64
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
