.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
cmovbe rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
test ax, 5320
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
jmp .bb_0.1
.bb_0.1:
xor si, bx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and bx, di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
or rdx, rbx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 56
cmovbe bx, bx
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
bts rdx, 255
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
jmp .bb_0.2
.bb_0.2:
and dl, 107 # instrumentation
cmovs ecx, ebx
cmovns dx, di
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
xor cl, cl
or dil, -57
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdx
and cl, 102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
or al, -48
bts eax, 103
and sil, 65
or cx, 10
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
cmovnz rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
