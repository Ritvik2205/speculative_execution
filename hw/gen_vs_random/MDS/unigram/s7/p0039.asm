.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, al
and dl, 57 # instrumentation
cmovnb cx, bx
or sil, bl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
cmovs si, di
or ax, -23697
xor rsi, -117
cmovs rdi, rsi
xor dil, 81
test al, sil
or rdi, 21
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], esi
cmovnbe eax, eax
and ax, 19224
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
bts edx, 189
xor eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
