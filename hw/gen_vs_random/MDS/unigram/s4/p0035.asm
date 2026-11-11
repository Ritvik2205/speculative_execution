.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rsi, rax
or eax, ebx
and dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 54
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
btr edx, ebx
test cl, 73
cmovp di, dx
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
cmovo bx, di
and rdx, rax
test dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
or esi, esi
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
