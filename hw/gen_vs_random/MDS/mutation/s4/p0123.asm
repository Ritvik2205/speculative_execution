.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
xor rsi, rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and di, si
and dl, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
or edx, edx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
cmovns rsi, rax
xor sil, 110
cmovnp edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
