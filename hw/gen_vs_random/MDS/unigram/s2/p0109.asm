.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 37
bt dx, ax
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and al, 93
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
or rsi, 93
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
or dl, dil
jmp .bb_0.1
.bb_0.1:
cmovl rcx, rsi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
and cl, dil
cmovnb cx, cx
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
bt rax, rcx
not ax
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
