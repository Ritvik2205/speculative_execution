.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, edi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
cmovp cx, di
and cl, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -39
dec dx
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
