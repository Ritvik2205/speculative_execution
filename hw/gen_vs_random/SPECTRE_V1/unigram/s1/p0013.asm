.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rcx + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 87
lea edi, qword ptr [rbx + rdx + 63]
dec rbx
add dl, -6 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 35
lea bx, qword ptr [rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
lea rax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
