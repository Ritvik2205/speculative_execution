.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
and bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
or eax, ecx
and rdi, rdi
cmovnp rax, rbx
cmovz rsi, rax
cmovz edi, ebx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
cmovnz ebx, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
not cl
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
test bl, cl
xor eax, 571592471
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovo si, bx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
cmovz bx, cx
and rax, -978188247
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
