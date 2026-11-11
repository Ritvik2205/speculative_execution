.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
or si, 34
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 84
mov sil, 32
not dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
test rdx, rdi
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
setnl al
or al, -57
add bl, -79 # instrumentation
cmovo ax, cx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 66
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
