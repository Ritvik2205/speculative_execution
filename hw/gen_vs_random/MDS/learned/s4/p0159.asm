.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
setnl dl
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
xor rax, 45
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
cmovz rdx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor cl, sil
jmp .bb_0.2
.bb_0.2:
bt dx, cx
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
xor cl, 93
or ax, -17790
or al, -8
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -23
cmovnle eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
btr ecx, eax
jmp .bb_0.4
.bb_0.4:
or ax, -4635
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
