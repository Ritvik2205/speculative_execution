.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rax, 1250429750
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and ax, ax
cmovnp ebx, eax
and al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
bt edx, 54
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmovnle esi, ebx
jmp .bb_0.1
.bb_0.1:
xor dil, dil
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and al, -8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
btr rdi, 129
btr rax, rdi
or ax, -11837
and sil, -9
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
