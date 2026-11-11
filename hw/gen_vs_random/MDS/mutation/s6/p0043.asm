.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs eax, eax
or cl, cl
test al, sil
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
btr bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
or dl, al
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
xor edx, esi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
and bl, 53 # instrumentation
cmovnl rbx, rbx
bt cx, di
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
cmovp dx, cx
and bl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
cmovnb rdi, rdx
cmovb cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
