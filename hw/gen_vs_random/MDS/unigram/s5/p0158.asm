.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 41
or rcx, -17
test al, bl
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
cmovle esi, eax
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
cmovnbe rdx, rsi
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
test bx, si
cmovo cx, cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 38
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 44
btc bx, 104
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
cmovnz rdx, rax
bt cx, dx
xor dil, -70
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
