.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, 1838539683
xor cl, sil
and eax, 33
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
btc cx, di
test cl, bl
and bl, -34 # instrumentation
cmovs rdx, rbx
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and sil, -69
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
xor bl, cl
and di, di
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or dx, dx
cmovz si, ax
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
not ecx
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
