.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
lea rsi, qword ptr [rcx + rsi + 56]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
add sil, bl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 2
test ecx, -1134698714
cmovno rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
lea dx, qword ptr [rsi + rbx + 60147]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 19
cmovnbe bx, bx
mov sil, cl
sub ebx, 82
and rax, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
