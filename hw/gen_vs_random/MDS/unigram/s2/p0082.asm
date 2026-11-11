.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
or ax, 16560
bt edi, eax
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
bts rdi, rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
xor rax, -1657511731
cmovnz si, ax
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and sil, 89
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edx
and bl, -6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
or cl, al
bt ecx, 61
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
bt rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
