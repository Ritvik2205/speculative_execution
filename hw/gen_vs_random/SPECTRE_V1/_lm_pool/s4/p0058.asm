.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
lea di, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
cmp al, 23
add bl, cl
and cl, cl
lea rax, qword ptr [rdi + rbx]
xor cl, 71
add ax, 23362
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
