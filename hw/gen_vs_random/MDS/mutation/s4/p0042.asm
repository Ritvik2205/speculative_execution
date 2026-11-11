.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, dx
and bl, 53 # instrumentation
cmovnl rbx, rbx
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
cmovs eax, eax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
xor edx, esi
or cl, cl
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and bl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
bt cx, di
cmovnb rdi, rdx
test al, sil
cmovb cx, di
cmovp dx, cx
or dl, al
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
