.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
add al, -80
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 16
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rcx
sub ebx, ebx
jmp .bb_0.1
.bb_0.1:
sbb esi, 42
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
sub eax, 18
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmp rax, rax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
