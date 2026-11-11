.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
cmovo rbx, rdi
and ax, -12519
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
cmovo eax, ebx
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and bl, bl
btr rsi, 207
jmp .bb_0.1
.bb_0.1:
and al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
cmovno rcx, rdx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
or esi, ecx
bt rbx, 241
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and di, 91
cmovl dx, di
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test dl, bl
bt dx, si
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and bl, 68
test ax, 6113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
