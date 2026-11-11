.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
xor dx, ax
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmovns rbx, rdx
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 48
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
cmovbe edx, eax
and dil, 125
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 17
btc bx, 58
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and dl, 8 # instrumentation
cmovle cx, bx
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
cmovp ecx, ebx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
