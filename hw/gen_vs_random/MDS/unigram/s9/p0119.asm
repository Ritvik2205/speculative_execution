.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
not bl
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
and rbx, 65
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdx
and dl, cl
cmovno ax, dx
cmovo di, dx
bt cx, si
cmovno rsi, rsi
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
