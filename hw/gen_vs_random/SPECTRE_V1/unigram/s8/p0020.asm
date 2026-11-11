.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rcx, 81
sub rax, rsi
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
add dl, 45 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdx]
add dil, -9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
add dil, bl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
xor rdi, 47
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
