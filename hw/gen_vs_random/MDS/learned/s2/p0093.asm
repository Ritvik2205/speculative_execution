.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor ax, -23364
and edi, 23
btc di, 233
jmp .bb_0.2
.bb_0.2:
and eax, -85386306
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
test bl, dil
btr edx, ebx
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
