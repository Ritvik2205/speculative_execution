.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg al
cmp al, al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
add cl, cl
cmovnz rcx, rdi
lea rcx, qword ptr [rax + rsi]
sbb ax, -14164
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
jmp .bb_0.1
.bb_0.1:
xchg cl, cl
test al, -70
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
sbb ebx, edx
bts ecx, 164
lea rax, qword ptr [rbx]
movzx edx, dx
xchg dil, bl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
btc bx, 173
mul rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
