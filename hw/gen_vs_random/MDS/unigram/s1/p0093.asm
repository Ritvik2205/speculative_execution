.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
not rbx
btr ax, si
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
or sil, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
bts rbx, rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
or dil, cl
cmovbe edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
or al, dl
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor al, al
btc bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
