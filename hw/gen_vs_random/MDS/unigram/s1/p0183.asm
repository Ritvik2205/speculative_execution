.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, 20
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
or rax, -285849275
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and al, -56
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovnb di, di
and di, 45
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 17
cmovns rsi, rcx
or sil, dil
xor rsi, 56
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and cl, -22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
