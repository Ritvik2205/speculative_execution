.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, -1843375753
and dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and sil, dl
cmovnbe esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
test ax, 6779
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
or bl, bl
cmovle edx, edi
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
test al, al
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
cmovb rbx, rdi
or dl, dl
bt rsi, rsi
and rsi, 85
btc ecx, edi
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
