.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rsi
cmovnbe rsi, rdx
xor dl, 9
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 105
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
setnb al
lea bx, qword ptr [rax + rbx + 97]
jmp .bb_0.1
.bb_0.1:
cmovnle dx, dx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
lea ax, qword ptr [rdx + rax + 96]
cmovl ecx, ebx
or al, cl
add cl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
