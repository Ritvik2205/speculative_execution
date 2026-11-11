.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
cmovo eax, ebx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
btr rsi, 207
and ax, 13090
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and bl, bl
and al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
cmovno rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
