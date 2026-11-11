.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 84
test sil, sil
cmovnb rcx, rbx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
btr ebx, ebx
cmovnbe ecx, ebx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
or dl, -8
jmp .bb_0.1
.bb_0.1:
and cl, -85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
cmovs ecx, edx
bt ecx, 52
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 53
or sil, cl
cmovnz rcx, rbx
bts bx, ax
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 26
test rsi, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
