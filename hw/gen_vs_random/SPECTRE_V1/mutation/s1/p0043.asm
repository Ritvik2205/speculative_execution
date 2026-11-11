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
add dl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
lea edi, qword ptr [rdx + rdx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
cmovle si, si
and bl, sil
bts cx, cx
add al, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
sub dl, al
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add dl, cl
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
