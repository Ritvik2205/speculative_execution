.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
btc ax, 43
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rax, -636362975
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 47
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
xor rcx, rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
bts rax, 77
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
