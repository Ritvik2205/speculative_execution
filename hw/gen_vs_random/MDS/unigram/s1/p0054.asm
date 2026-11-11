.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
or bl, 127
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
bts ax, di
bt rcx, rdx
and dx, si
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
btc ax, dx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
jmp .bb_0.1
.bb_0.1:
and bl, 109 # instrumentation
cmovs bx, ax
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsr si, si
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
