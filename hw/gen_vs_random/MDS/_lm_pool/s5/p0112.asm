.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 23633
xor cl, sil
btr cx, di
xor dl, -59
or al, -78
jmp .bb_0.1
.bb_0.1:
or sil, -49
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
xor dl, bl
xor ax, -23364
test ecx, -1843375753
and rax, -1931765367
test dil, -51
test eax, -675944960
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
test di, 78
btc ecx, 75
cmovnp rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
