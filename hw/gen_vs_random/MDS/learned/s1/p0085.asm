.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
setns dl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 26
and dl, -73 # instrumentation
cmovns rdi, rsi
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
bts rbx, 38
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
or dl, sil
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
cmovl rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
or dl, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
