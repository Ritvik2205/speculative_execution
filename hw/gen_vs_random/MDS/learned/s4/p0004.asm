.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor al, -119
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 40
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
xor cl, cl
or dil, -52
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 23
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
lea ecx, qword ptr [rdx + rax + 28]
cmovnb rdi, rdi
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
