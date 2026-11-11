.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
cmovnb rdi, rdi
test dl, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
or ax, -4210
and dil, 125
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and dl, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
cmovbe ebx, edx
or bl, cl
btc rsi, 105
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
bt esi, edx
and dl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
cmovnbe rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
