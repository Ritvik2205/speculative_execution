.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
cmovo rbx, rdi
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
cmovo eax, ebx
and bl, bl
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
btr rsi, 146
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and ax, -12519
jmp .bb_0.1
.bb_0.1:
cmovno rcx, rdx
and bl, bl
and al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
