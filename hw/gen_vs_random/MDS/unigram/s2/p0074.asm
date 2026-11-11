.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 48 # instrumentation
cmovz rax, rdi
cmovp ebx, edi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 42
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
not rsi
xor al, cl
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edi
and dx, 3
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
btr dx, di
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
test ecx, -1843375753
xor al, dl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
test eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
