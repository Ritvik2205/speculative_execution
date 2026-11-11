.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx + rdi]
add dl, -73 # instrumentation
btr ax, si
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
cmovnbe si, ax
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
sbb bl, bl
lea di, qword ptr [rdx + rdi + 85]
setnp cl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and al, 33
add cl, -127
lea rax, qword ptr [rdx + rdx + 31]
sub cl, dil
lea eax, qword ptr [rax + rdi + 15]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
