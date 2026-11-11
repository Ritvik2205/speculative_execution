.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 2
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and bx, -21
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
bts ebx, 80
bt rdi, rdi
btc rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
and cl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
and al, -64 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], bx
and cx, 97
bt cx, dx
cmovnp si, ax
cmovno eax, esi
btr rdi, 87
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
