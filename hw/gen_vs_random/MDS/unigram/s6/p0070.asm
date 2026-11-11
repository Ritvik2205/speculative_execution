.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rdi, rdi
and bl, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
test cl, dil
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and al, 54 # instrumentation
cmovnp di, di
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rcx]
and cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
btc eax, 40
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
