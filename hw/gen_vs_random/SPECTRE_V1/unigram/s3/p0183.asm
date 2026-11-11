.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, al
setno dl
btc si, 95
sub sil, cl
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
adc dl, 60
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 45 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], bx
mul dil
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
cmovb edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
