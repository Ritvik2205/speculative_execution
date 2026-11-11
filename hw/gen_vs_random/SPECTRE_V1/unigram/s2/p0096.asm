.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
lea rax, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 52
sub ecx, 99
sbb dil, 19
lea ecx, qword ptr [rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
movsx eax, al
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 42
cmovs bx, ax
lea rbx, qword ptr [rax]
mov cl, -98
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
or dl, 1 # instrumentation
add sil, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
