.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
lea di, qword ptr [rax + rbx]
test eax, -544019457
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
btc dx, si
mov rdx, 49
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
add cl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
or al, 96
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
xor dl, cl
xor cl, bl
mul al
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
or ax, -15282
or dl, dl
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
