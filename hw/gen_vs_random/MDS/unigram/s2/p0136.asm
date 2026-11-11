.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
and dl, al
test si, ax
and cl, -76 # instrumentation
cmovl ax, dx
and sil, 74
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
test rax, 337705873
and al, 14
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 54
bt rsi, rsi
and dl, 84 # instrumentation
cmovl rdx, rax
jmp .bb_0.1
.bb_0.1:
btc dx, bx
and rdi, 95
or ecx, 16
cmovnle rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
xor cx, di
or rbx, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
