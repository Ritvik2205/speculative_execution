.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
btr edx, ebx
cmovnz cx, cx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 37
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
cmovle ecx, edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
add cl, 107 # instrumentation
lea edi, qword ptr [rdx + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add di, ax
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
add edi, -91
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 56
lea rdx, qword ptr [rbx + rdx]
and dl, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
xchg cx, ax
or bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
