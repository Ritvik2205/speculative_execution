.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
lea rsi, qword ptr [rdi + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
test al, bl
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
movsx rdx, bx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
test dl, -105
add dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
