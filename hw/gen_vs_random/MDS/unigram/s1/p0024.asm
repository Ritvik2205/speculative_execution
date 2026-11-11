.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, eax
test ebx, -961564216
cmovns si, dx
cmovs dx, si
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
bts rax, rsi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi
or al, 74
jmp .bb_0.1
.bb_0.1:
cmovnle rbx, rcx
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rax], dx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
and bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
test edi, ebx
test rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
