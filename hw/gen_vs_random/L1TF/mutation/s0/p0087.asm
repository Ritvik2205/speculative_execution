.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, rdx
imul edx, edx, 31
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdi
cmp cx, di
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
cmovb esi, edx
setnle bl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -125
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
setz bl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
add bl, -9 # instrumentation
cmovs dx, di
add bl, -127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
setbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
