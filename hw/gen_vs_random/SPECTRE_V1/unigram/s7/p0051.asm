.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -94 # instrumentation
cmovnle rax, rbx
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 91
test dl, -105
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
setp sil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
lea edx, qword ptr [rax]
add cx, -103
inc bl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
inc rsi
bswap rdx
cmp eax, edi
cmp dl, bl
bswap rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
