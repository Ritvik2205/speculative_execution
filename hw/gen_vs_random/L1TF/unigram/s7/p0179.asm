.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 43
cmovno rcx, rdx
add cl, 88
seto al
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
cmovbe esi, ebx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rcx
jmp .bb_0.1
.bb_0.1:
cmovo edx, ebx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
sbb bl, -88
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
sub cl, bl
add al, 104 # instrumentation
mov eax, 39
mov ax, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
