.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 22
xor ax, 2053
xor rbx, -51
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
btc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
xor ax, 24729
cmovl rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
dec dl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 34
jmp .bb_0.1
.bb_0.1:
add ebx, 99
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], eax
test cl, 2
and ax, di
cmovbe ax, si
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
or ax, -17790
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
