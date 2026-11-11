.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
or cx, 10
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 75
and bl, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
cmovbe ax, bx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
not bl
test edx, 57
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 31
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
btc si, cx
or dx, 90
or al, -8
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
cmovo dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
