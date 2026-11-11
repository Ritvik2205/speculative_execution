.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
add bl, 79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
sbb rax, 2044012157
cmp bl, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and eax, 1032144833
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 23
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add al, -37 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
sbb di, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
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
