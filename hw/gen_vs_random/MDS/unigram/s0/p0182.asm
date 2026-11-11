.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and dil, 55
cmovnbe di, bx
and dl, cl
and bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
or rsi, 77
or rdi, rax
or rdx, 44
and al, -105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 82
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 85
and rax, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and dil, -38 # instrumentation
cmovp rdi, rcx
or al, -8
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
