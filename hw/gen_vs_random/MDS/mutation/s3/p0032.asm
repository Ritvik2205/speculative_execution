.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
cmovz rdx, rsi
cmovz cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
bts esi, 61
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and al, 20 # instrumentation
cmovp dx, di
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
or cl, dl
xor di, -83
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rax, -978188247
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
bts di, 37
bt cx, ax
and cl, 78 # instrumentation
cmovs ax, dx
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
and rcx, 107
test rax, 1949278494
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
