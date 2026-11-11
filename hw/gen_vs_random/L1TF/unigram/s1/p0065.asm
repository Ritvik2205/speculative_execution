.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdi]
inc eax
mul edi
xor cl, dl
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
add dl, 85 # instrumentation
cmovp dx, dx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
xor dx, 10
bswap eax
inc rax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
setno dil
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
