.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 68
test cx, 18
add dl, dl
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], di
add bl, 115 # instrumentation
lea eax, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or eax, ebx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -73
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
xor esi, ebx
bts si, si
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
