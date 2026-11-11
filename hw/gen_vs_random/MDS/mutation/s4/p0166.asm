.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and bl, 53 # instrumentation
cmovnl rbx, rbx
cmovb cx, di
btr bx, dx
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or cl, cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
cmovp dx, cx
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
or dl, al
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
cmovs eax, eax
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
bt cx, di
xor edx, esi
test al, sil
cmovnb rdi, rdx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -104
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -33
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and al, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
