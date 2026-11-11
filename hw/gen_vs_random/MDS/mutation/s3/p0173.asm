.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and bl, bl
cmovo rbx, rdi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
btr rsi, 207
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
cmovo eax, ebx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and ax, 31082
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and bl, bl
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
cmovno rcx, rdx
and al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
