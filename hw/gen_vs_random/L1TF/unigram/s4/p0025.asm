.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
lea rbx, qword ptr [rdx]
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
cmovnle rsi, rsi
or si, -97
jmp .bb_0.1
.bb_0.1:
cmp rcx, rdi
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
lea esi, qword ptr [rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
