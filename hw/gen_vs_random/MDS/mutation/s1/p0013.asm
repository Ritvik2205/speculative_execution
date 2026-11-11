.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
cmovnl rsi, rax
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
xor ecx, 8
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
test al, cl
and bl, 109 # instrumentation
cmovs si, cx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
btc dx, dx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
test edi, eax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and cl, 49 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
and rsi, rsi
or al, al
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
