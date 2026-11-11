.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, -88
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and bl, 108 # instrumentation
cmovns rbx, rbx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
bts rdx, rdi
btc ax, 95
cmovnp rcx, rdx
not di
test edi, -1252846009
cmovnbe ax, di
and al, al
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and dl, al
or cl, al
cmovs eax, eax
or bl, -125
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 17
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
