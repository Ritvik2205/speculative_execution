.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 26
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 31
sbb rcx, 44
or cl, bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
xchg sil, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 17
or cl, cl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
add bl, 111 # instrumentation
cmovs rdx, rdx
cmovz rdx, rcx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
