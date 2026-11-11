.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, dx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and al, -128 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 84
cmovnb ecx, eax
cmovo rsi, rcx
and ebx, 31
test sil, -55
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 91
xor al, bl
cmovnb ebx, edx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
or sil, -49
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
or si, 0b1000000000000000 # instrumentation
bsr si, si
bts edx, 189
cmovnz edi, ecx
bt rsi, rcx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
