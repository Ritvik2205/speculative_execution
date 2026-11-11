.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, ebx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 50
btr dx, dx
and sil, sil
and dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
or al, -58
test rbx, rdi
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and si, -121
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
or al, -78
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
cmovp di, di
btr di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
