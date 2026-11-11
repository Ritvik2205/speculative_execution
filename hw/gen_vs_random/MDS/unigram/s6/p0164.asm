.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, 6779
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 51
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 97
not rbx
or bl, -52
and dl, sil
and al, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
xor cl, 83
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rax, rcx
bts rsi, rdx
and sil, sil
test dl, -119
xor si, 80
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 65
and ecx, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
