.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
not ebx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and dil, 49 # instrumentation
cmovp rax, rdi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
or dil, sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor cl, 98
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
or sil, cl
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
and dl, 125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
cmovz ecx, ecx
and dx, 60
bts di, bx
or cl, cl
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
