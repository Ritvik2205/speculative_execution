.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], cx
setnbe bl
setp dl
imul dx, ax, 63
add di, 82
jmp .bb_0.1
.bb_0.1:
add dil, 5
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 8
add dl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
or eax, 76
bt rdx, rdi
lea rdx, qword ptr [rcx + rcx + 92]
cmovnbe ax, bx
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
cmp ebx, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
