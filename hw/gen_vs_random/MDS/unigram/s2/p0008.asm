.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and dil, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and dl, bl
cmovp si, si
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
cmovs eax, eax
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and cl, bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 20
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 71
and cx, si
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
