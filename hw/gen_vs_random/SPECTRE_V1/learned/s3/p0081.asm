.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
add eax, -1265007362
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
adc cl, dl
setb al
setb dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 41 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
js .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, 63 # instrumentation
cmovl dx, si
lea rsi, qword ptr [rdx + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
bts esi, 29
and al, -119
test dil, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
