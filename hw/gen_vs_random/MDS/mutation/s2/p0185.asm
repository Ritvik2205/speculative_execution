.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and bl, 53 # instrumentation
cmovnl rbx, rbx
cmovnb rdi, rdx
btr bx, dx
xor edx, esi
cmovp dx, cx
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
bt cx, di
test al, sil
cmovs eax, eax
or dl, al
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
cmovb cx, di
or cl, cl
and bl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
