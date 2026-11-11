.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
setns dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
imul rsi, rcx, 10
imul ecx, esi
lea rbx, qword ptr [rdi]
bts rdi, 87
xchg bl, bl
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 74
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
cmp al, 69
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
