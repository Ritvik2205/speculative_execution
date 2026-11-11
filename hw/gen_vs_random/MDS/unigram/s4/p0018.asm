.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 16 # instrumentation
cmovle ecx, ecx
cmovl rsi, rax
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmovnbe rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
or dil, 16
btr di, 89
bts ebx, 205
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rsi
xor si, 91
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
cmovnle edx, ecx
or rsi, rdx
xor al, 9
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
