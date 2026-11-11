.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
cmovnl rsi, rax
test al, cl
and bl, 109 # instrumentation
cmovs si, cx
xor ecx, 8
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rsi, rsi
or al, al
test edi, eax
btc dx, dx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and cl, 49 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
