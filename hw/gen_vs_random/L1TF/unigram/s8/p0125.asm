.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 23
not edx
add bl, 79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
neg cl
movzx ax, dil
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
or bx, bx
cmovb dx, ax
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
