.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not al
and al, dil
btc ecx, 48
test sil, -55
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmovo rbx, rsi
not rdi
or dl, -97
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
xor bl, 67
xor al, 34
and al, -83 # instrumentation
cmovnp rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
