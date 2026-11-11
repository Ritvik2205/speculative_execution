.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, al
cmovb edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
lea rsi, qword ptr [rdx]
lea di, qword ptr [rdi + rax + 15575]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, al
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
add rax, 977059290
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
