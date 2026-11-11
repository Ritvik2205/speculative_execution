.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx eax, bl
test ax, di
test rbx, rcx
sets dl
xor rdx, 122
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and cx, 127
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
btc ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
cmovb ax, bx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
