.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rax
cmovns eax, ebx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
cmovnbe rsi, rdi
and dl, -15 # instrumentation
cmovnp dx, dx
not bl
or ax, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and sil, -14 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
xor cl, 55
or dx, 125
btr ax, 193
xor dil, bl
or di, 46
and ax, 5001
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
