.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
cmovo rdi, rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
bts rsi, 221
cmovns rsi, rsi
or ax, ax
xor rdi, rdi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 86
and cl, -19
xor dil, al
cmovnb rsi, rax
xor edi, 61
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edi
cmovb rbx, rdi
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
