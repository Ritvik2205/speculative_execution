.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rbx, rbx
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
xchg dil, al
sbb sil, al
lea edx, qword ptr [rcx + rdi + 62270]
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
setp dl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -73
add dl, -48 # instrumentation
lea esi, qword ptr [rsi + rcx]
bt si, 21
or edx, 47
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
mov dil, dl
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
