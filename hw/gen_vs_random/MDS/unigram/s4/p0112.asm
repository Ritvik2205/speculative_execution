.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, al
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 93
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and bl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
or sil, dl
btr cx, bx
btc dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
btr bx, 100
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 95
cmovno rdi, rbx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 82
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
and dl, 96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
cmovle si, di
test al, -7
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
or cl, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
