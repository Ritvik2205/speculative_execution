.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
cmp ax, 24210
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
add dl, -95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
btc si, ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
test si, 67
add dil, -93 # instrumentation
cmovb rsi, rdi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
lea cx, qword ptr [rdx + rcx + 1]
cwd
cmp ax, -6940
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
add dl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
