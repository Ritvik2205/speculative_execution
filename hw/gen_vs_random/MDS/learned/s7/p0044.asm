.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
bts rbx, rsi
and bl, bl
not al
not dil
btr bx, 100
xor ax, 31969
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
or al, -22
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and esi, 25
or dl, sil
and dil, dl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
