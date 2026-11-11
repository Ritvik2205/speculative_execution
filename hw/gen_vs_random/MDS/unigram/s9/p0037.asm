.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt di, 52
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
btc edi, eax
and cl, -127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
cmovnp rax, rcx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
xor di, -83
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 62
and al, -103 # instrumentation
cmovns eax, eax
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 57
cmovz di, cx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 69
test dl, 48
or di, di
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
test al, dl
bts rsi, rax
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
