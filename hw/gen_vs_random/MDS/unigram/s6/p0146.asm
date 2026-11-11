.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
cmovns eax, eax
and eax, edx
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
cmovnle rbx, rcx
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
bts cx, 14
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and al, 106
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
cmovz si, di
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
