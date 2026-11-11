.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
or rax, -285849275
btc rbx, rax
xor al, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
setz al
jmp .bb_0.1
.bb_0.1:
or dx, bx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
bt cx, di
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
test rax, 1732677821
and al, 126
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
