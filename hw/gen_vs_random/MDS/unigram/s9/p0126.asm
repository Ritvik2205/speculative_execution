.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and dl, 1 # instrumentation
cmovl dx, di
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and cl, -24 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
cmovnle rdi, rax
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and al, 82
and al, al
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
or sil, cl
cmovz bx, cx
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
cmovle si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
