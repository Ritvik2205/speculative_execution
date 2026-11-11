.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
or al, 54
and eax, -829294476
xor dil, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and bl, cl
test rdi, rbx
test rsi, 10
xor bl, -88
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
