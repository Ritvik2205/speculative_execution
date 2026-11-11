.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and bl, 68
xor rdi, -9
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
xor cl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rsi]
and dl, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
jmp .bb_0.1
.bb_0.1:
bts cx, 191
or cl, -77
bt eax, 37
test bl, 65
and dl, 84 # instrumentation
cmovle dx, cx
cmovl bx, ax
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
