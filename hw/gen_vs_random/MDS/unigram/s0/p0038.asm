.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, bx
btr eax, edx
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
bts dx, si
cmovp rcx, rax
xor cx, -18
cmovp rdi, rsi
and bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or dx, 125
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
bt bx, 253
or sil, -49
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
btr ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
