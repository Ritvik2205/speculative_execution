.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 107 # instrumentation
cmovs ecx, ebx
cmovnb si, di
xor sil, 93
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
cmovs dx, di
or cl, sil
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 10
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rcx
or sil, cl
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
or bl, sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 98
and bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
cmovo rbx, rdx
bts rax, 117
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
dec dl
sub sil, 40
xor rsi, 74
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
