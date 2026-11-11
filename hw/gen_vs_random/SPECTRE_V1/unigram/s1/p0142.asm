.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
add bl, 28 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and al, -54
bswap rsi
add dl, -27 # instrumentation
setle dl
xor bl, sil
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
imul di, di
add cl, 71 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
xchg dil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
