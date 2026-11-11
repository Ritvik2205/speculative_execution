.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 43
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
test ecx, 1044879383
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
cmovb di, dx
and dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
btc ax, 37
and al, 122 # instrumentation
cmovnb rax, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 48
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
btc rdi, rax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
cmovnb ax, ax
test cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
