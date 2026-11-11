.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
lea edi, qword ptr [rdi + rbx]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
add al, -42 # instrumentation
lea ax, qword ptr [rsi + rdx]
test rdi, rsi
setns cl
test cl, -120
xor rsi, 83
bswap edx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edx
add al, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 100
setno dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
