.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
mul cx
add dl, 47
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
lea dx, qword ptr [rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 61
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
cmp dl, 71
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
bswap rbx
adc ax, -614
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
not eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
