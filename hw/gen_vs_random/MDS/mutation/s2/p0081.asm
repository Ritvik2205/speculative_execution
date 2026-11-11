.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
xor ax, -23364
cmovnle rdi, rsi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, -2058103810
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
cmovns di, bx
btr bx, ax
cmovnb si, di
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
btr rax, 209
btc edx, 75
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
test bx, ax
bts ax, si
test dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
