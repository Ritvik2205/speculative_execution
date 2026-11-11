.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
or edx, edx
and cl, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
xor rsi, rsi
and di, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
or rax, 302048971
or rcx, -17
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
xor al, 9
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or cl, cl
cmovns edx, ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
btr si, 208
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
xor cl, -13
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
bt edx, esi
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
