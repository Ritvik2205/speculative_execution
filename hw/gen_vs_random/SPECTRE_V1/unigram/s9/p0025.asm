.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 32
cmp rdx, -19
and al, al
add cl, 36 # instrumentation
sub rbx, rbx
or cx, 75
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 33
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
xchg sil, cl
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
loope .bb_0.1
jmp .exit_0
.bb_0.1:
setbe al
add al, -72
bswap rax
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
setnb cl
and eax, 933895314
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
