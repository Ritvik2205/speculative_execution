.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
setnp bl
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
xor edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
cmovnbe eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bt ecx, 204
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
sbb dl, 127
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
cmovnz di, di
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
add bl, 60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
