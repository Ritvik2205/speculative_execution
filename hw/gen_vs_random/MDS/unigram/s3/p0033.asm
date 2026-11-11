.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
cmovnle si, si
not rax
cmovb si, si
and rbx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and bl, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
or si, -12
jmp .bb_0.1
.bb_0.1:
cmovl rdx, rax
xor sil, -126
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
and al, -23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rbx]
and bl, 20 # instrumentation
cmovo edi, ebx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
