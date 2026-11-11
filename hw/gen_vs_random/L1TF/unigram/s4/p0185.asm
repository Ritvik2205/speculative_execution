.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rsi, 94
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
cmovnl rbx, rdi
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
cbw
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 76
not bx
lea ecx, qword ptr [rdx + rcx]
imul edx, edx, 31
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
cmp dil, al
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 4
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
