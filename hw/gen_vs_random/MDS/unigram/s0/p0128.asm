.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
or edx, 99
xor bx, 37
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
and dil, -115 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
cmovns ecx, esi
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rdx, 22
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
or bx, 69
xor ax, 2053
or cl, 100
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edx
cmovns esi, ebx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
cmovno ebx, ecx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
