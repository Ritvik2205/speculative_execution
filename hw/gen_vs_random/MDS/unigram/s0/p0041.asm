.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle edi, ecx
bt eax, edi
or si, 70
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
bts ax, bx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and sil, -94
and dl, dil
and bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 14
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 25
cmovnz rsi, rdi
cmovnz di, si
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 91
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 40
btr rcx, 98
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
