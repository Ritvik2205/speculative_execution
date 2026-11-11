.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rcx]
not dl
cmovo si, ax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and dil, -11 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
test dl, dil
not rax
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
and dl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and dil, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmovz esi, esi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
