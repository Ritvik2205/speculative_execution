.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
cmovo eax, ebx
and ax, 29207
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
cmovo rbx, rdi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
btr rsi, 146
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and bl, bl
jmp .bb_0.1
.bb_0.1:
cmovno rcx, rdx
and al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and bl, bl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
