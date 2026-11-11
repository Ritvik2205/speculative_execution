.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, 255
bts eax, 103
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and al, -56
bt bx, cx
cmovns ebx, eax
and esi, 50
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
btc esi, 226
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and bx, -21
or rdx, 85
and sil, al
bt di, cx
or al, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
