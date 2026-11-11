.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dl
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
cmovo rax, rbx
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
or ax, -7150
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
cmovnle eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
or ax, -23697
cmovz ebx, eax
test dil, -80
btc dx, 146
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and dl, sil
and dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
