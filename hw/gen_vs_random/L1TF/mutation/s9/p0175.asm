.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -95 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and bl, 89
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
jmp .bb_0.1
.bb_0.1:
add bl, -127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmovb esi, edx
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
cmp rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
setnle bl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
add bl, -9 # instrumentation
cmovs dx, di
imul edx, edx, 31
cmp cx, di
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
setbe cl
setz bl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
