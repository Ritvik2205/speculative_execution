.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -14
btc si, ax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
xor cl, bl
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
xor dl, 40
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
cmovp di, si
cmovns di, dx
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
test bl, bl
or dil, -76
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
and cl, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
cmovns ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
