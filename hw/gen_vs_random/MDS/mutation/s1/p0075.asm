.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp dx, cx
cmovs eax, eax
cmovnb rdi, rdx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
test al, sil
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and bl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
cmovb cx, di
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
bt cx, di
xor edx, esi
or cl, cl
and bl, 53 # instrumentation
cmovnl rbx, rbx
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
or dl, al
btr bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
