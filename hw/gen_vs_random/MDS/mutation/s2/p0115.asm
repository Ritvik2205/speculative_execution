.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
btr rsi, 146
cmovo rbx, rdi
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and bl, bl
cmovo eax, ebx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and ax, -10351
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
cmovno rcx, rdx
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
