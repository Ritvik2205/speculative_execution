.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
cmovnb rax, rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
setp dil
add dl, -122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
setnbe dil
and dx, bx
bswap rsi
lea dx, qword ptr [rdx]
cmovns edx, eax
xchg dl, bl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 96
test al, al
sub sil, -99
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
