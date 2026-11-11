.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rdi, rdi
lea rdi, qword ptr [rcx + rax]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 10
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
lea rdx, qword ptr [rdx + rdi + 71]
sbb bl, 14
sub ebx, 82
add al, 28 # instrumentation
setnz al
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 43
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
add sil, 39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], bx
lea rdi, qword ptr [rcx + rdi + 2044]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
