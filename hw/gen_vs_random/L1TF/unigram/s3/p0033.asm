.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul ebx
and rax, 1994547909
or bx, bx
test si, 12
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
cdq
lea rax, qword ptr [rsi + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
cmovle ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
cmovb di, bx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
