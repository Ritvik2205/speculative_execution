.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb edi, ecx
cmp al, al
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
lea rsi, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
lea di, qword ptr [rdi + rax + 15575]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
add dl, -125 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
