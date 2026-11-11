.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -73
or di, 0b1000000000000000 # instrumentation
bsf si, di
add al, 27 # instrumentation
sbb ecx, edi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
movzx rax, bl
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
inc dl
adc bl, 100
mov si, di
inc sil
btc eax, esi
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
cmovnb rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
