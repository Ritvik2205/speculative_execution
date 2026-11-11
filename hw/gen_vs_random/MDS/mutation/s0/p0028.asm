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
bts qword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and cl, 112 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
btr cx, di
or ax, bx
xor bl, -61
not bl
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
