.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsr cx, si
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
bts rsi, rax
cmovnb ax, di
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
btc bx, si
and dx, di
xor dl, bl
btr bx, ax
and rdi, 39
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and si, -121
cmovno rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
test al, -7
cmovns rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
