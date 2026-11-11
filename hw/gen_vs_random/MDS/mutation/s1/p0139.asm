.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or rax, -141551502
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
bt cx, bx
and al, -14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
cmovno rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
xor bl, -27
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and al, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
bt di, 52
btr ax, ax
or dil, -71
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
and dl, 53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
