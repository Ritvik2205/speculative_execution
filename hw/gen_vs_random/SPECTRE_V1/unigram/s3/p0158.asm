.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx di, dil
mul di
lea si, qword ptr [rsi + rcx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
cmovle rdi, rcx
mov dil, dl
sub rcx, 34
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, -61
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
add bl, 106 # instrumentation
cmovs esi, eax
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 46
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
add cl, 87 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 17
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
add dl, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
