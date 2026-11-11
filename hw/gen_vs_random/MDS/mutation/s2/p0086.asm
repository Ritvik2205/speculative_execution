.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
xor ax, -12492
cmovnle rdi, rsi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, -731384280
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
cmovns di, bx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
cmovbe ebx, edx
or bl, cl
btc rsi, 80
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
