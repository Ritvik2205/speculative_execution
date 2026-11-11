.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, cx
bt dx, 5
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
test sil, dl
bt rcx, rax
and sil, -3 # instrumentation
cmovnb si, dx
cmovnb dx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
or rdi, 67
or rbx, -124
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 37
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and cl, -22 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
xor sil, 29
or al, -48
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
or dil, -57
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
