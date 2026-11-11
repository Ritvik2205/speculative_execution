.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, 19339
add sil, -121 # instrumentation
setno sil
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 26
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
sub rdx, rdx
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
lea eax, qword ptr [rcx + rcx + 35]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
add bl, -76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
add dil, -75
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
