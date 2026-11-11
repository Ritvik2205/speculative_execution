.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
or cx, 43
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sub rsi, 3
xor ecx, 49
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
sbb cx, 6
and bl, dil
add dl, 97 # instrumentation
cmovnbe edx, ecx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
