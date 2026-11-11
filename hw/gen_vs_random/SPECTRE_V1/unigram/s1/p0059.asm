.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
setnl al
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], esi
cmovl di, si
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 9
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
setno dl
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
and dil, 19
and rdi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 22
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
