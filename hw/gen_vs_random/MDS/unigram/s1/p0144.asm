.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ax, bx
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or cl, -36
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
cmovs di, di
cmovbe edi, edi
and al, -38 # instrumentation
cmovnb dx, dx
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
test si, 13
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
or dil, dl
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
