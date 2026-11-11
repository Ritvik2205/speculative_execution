.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
or eax, -1777347252
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and ax, -12519
and eax, -85386306
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
cmovb rdi, rdi
jmp .bb_0.1
.bb_0.1:
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
xor di, -83
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
