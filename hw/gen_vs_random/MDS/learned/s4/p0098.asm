.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and edi, 23
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
or sil, cl
jmp .bb_0.1
.bb_0.1:
and dil, cl
xor al, 8
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
or ax, -14271
and cl, dil
and ax, -12519
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
btc di, 164
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 50
xor dl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
