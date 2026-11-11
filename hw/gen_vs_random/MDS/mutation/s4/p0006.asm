.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
and di, si
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
or edx, edx
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and dl, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and cl, cl
xor rsi, rsi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
xor sil, -15
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
cmovnp edx, eax
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
cmovns rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
