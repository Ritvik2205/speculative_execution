.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, ax
and cl, 91 # instrumentation
cmovle rcx, rcx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
btc di, 164
cmovb rbx, rsi
and esi, 40
cmovnp dx, dx
or dl, cl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
xor cl, bl
cmovnl cx, di
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
or cl, al
jmp .bb_0.1
.bb_0.1:
btc ax, 12
bts ecx, 3
test bl, bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
