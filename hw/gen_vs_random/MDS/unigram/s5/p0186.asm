.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ecx
and al, 82
btc rdi, rdi
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bt rbx, rcx
xor cl, 83
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 43
btc esi, 199
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and al, -38 # instrumentation
cmovnb dx, dx
xor dl, bl
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
or al, cl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
