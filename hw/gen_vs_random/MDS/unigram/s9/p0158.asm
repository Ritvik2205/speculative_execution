.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rdx, rax
xor dx, si
btc edi, eax
and bl, dil
xor al, -89
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
xor si, 80
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
xor al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 68
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
and bx, di
or bl, al
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
and rcx, 107
xor eax, -885380838
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 76
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
