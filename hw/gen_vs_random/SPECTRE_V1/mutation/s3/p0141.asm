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
jmp .bb_0.2
.bb_0.1:
add dl, -125 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 119
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
jmp .bb_0.2
.bb_0.2:
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
sbb dl, cl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edi
movzx eax, dil
imul cx, bx, -29
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 51
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
cmovle si, di
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
