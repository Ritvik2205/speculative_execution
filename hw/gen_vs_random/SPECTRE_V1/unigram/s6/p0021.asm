.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 1
btc cx, dx
and rdx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdx]
neg dil
or edx, 85
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
add cl, 44 # instrumentation
cmovz edx, eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
not rcx
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
mov eax, esi
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor rbx, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
