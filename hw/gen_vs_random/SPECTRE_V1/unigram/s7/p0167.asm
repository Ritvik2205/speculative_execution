.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 22
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 92
add bl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
add dil, 105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
or eax, -126
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 43
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
bswap rcx
add dl, 95 # instrumentation
cmovnb rax, rsi
cmp dil, -58
cmovnle rax, rcx
add dl, -127 # instrumentation
setp al
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
cmovb eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
