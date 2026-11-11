.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, cl
imul eax, esi
cmovno rdx, rbx
sbb al, 49
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmovb rcx, rdx
add di, bx
bts dx, 26
neg dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
and rax, rdx
add eax, -371144449
test rcx, rax
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
dec dx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
adc bl, 88
mul dl
seto dl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
movsx dx, al
adc dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
