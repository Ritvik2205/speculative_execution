.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 70
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
cmovl edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
btr ebx, eax
btc eax, esi
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
cmovo dx, di
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
xor ax, bx
test bl, cl
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rax, 627810357
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
bt ax, di
xor al, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
