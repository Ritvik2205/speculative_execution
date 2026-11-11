.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 83
xor eax, 1170472196
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and dl, -33 # instrumentation
cmovns rdi, rdi
cmovnb edx, edx
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
xor cx, bx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 1
cmovnbe ax, di
and si, bx
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
xor cl, dil
xor al, -119
cmovo rdx, rbx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
