.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btc dx, 38
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
btc dx, ax
and cl, -3 # instrumentation
cmovnb cx, dx
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
or bl, 84
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
or rsi, rdx
or bl, dil
test sil, sil
cmovnz ax, si
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rbx
cmp sil, 74
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and cx, 16
cmovnbe ebx, eax
add si, 25
or dl, -115
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
xchg rax, rcx
test ax, 5320
imul dx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
xor bl, sil
and dx, 46
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
or bl, 73
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 97
test bl, 106
cmovle rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
