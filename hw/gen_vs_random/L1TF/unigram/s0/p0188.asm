.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdx]
xchg al, cl
btc ax, dx
cmovs si, bx
xor al, al
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
jmp .bb_0.1
.bb_0.1:
and rsi, rcx
cmovnp bx, dx
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
or rbx, 18
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and sil, sil
cmovnz rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
