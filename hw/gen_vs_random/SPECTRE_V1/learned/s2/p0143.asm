.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
adc rax, -384715932
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
setno bl
add bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
lea edx, qword ptr [rdi + rbx + 40]
and eax, ecx
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
or bl, dl
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 6
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 82
or dl, 8
add cl, -42 # instrumentation
adc dil, al
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 24
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -58
xor eax, -764881786
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
