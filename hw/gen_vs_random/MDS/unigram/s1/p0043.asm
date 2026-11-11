.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edx
not eax
or dl, 51
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
bts rbx, rcx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
or di, 13
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
xor bl, -88
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
or sil, -78
btr bx, 100
bts di, dx
and cl, dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
and al, -33 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
btc ebx, ebx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and dx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
