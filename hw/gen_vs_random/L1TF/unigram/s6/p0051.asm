.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
btc ecx, 72
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
add edx, 56
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
add bl, 3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
setb bl
add al, -9 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 60
add bl, -9 # instrumentation
adc rax, 1544006018
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
cmovno ax, cx
bswap eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
