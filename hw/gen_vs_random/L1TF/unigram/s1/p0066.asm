.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 16
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
add cl, 72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
lea rcx, qword ptr [rdx + rbx]
setno dil
add dl, 10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -70
and rdx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdx]
cmovnz dx, dx
mul rcx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
add sil, 28 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
