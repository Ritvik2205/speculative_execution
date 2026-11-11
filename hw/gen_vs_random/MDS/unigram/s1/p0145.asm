.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 74
or si, 77
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
bt rdx, 60
or esi, 72
and bx, -21
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and al, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and dl, -7
and cx, di
and sil, -115 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and cl, -22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
xor bl, dl
test rdx, -1624442902
cmovno dx, cx
and cl, 95 # instrumentation
cmovns rdx, rdx
and bl, -55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
or dl, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
