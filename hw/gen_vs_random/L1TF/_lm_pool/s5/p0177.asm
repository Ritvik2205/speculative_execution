.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
lea rdi, qword ptr [rdi + rax]
cmovnle rdx, rcx
lea ecx, qword ptr [rdx + rdx + 21]
xor al, bl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
cmp edx, 99
and dil, dl
test rdx, 2
sbb ecx, 71
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
