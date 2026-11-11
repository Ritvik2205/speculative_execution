.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
test ax, 18697
btc ax, si
xor rdx, -59
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rsi, 82
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and al, cl
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
or al, sil
or dil, dil
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rcx, -63
cmovnp rcx, rsi
and bl, 21 # instrumentation
cmovb si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
