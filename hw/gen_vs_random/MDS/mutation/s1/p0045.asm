.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
xor eax, 2063216578
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
test al, bl
cmovnl ebx, edx
btr bx, bx
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
jmp .bb_0.1
.bb_0.1:
xor cl, 98
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
not cl
or rsi, rcx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and dl, 32 # instrumentation
cmovnbe edx, edi
cmovnle cx, ax
bts rdx, 200
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
