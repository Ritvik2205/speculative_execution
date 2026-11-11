.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
setnl cl
test rax, -1638758413
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
lea rbx, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
or cl, -62
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
not dil
lea rax, qword ptr [rcx]
mov dl, dl
lea di, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
