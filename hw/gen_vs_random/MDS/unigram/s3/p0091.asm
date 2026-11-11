.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
btc di, 164
cmovb rbx, rax
and esi, 85
cmovnp dx, dx
or dl, sil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
xor cl, bl
cmovnl cx, di
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
or cl, al
btc ax, 20
bts ecx, 184
test bl, bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 12
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
