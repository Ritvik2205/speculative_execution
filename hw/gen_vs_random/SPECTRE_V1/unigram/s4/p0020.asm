.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
setnz cl
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
lea ebx, qword ptr [rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
movzx si, cl
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 82
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
cmovnb cx, ax
bt di, dx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
