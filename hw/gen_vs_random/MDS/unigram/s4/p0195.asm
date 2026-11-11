.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 21
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 84
and dl, -53 # instrumentation
cmovbe eax, edx
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
xor esi, esi
cmovle bx, di
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
cmovp cx, si
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
cmovnb di, cx
cmovl rdi, rax
xor dil, -5
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
cmovns rbx, rsi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and cl, al
or dl, -21
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 49
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
