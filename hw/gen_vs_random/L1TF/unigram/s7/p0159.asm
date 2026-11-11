.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rax, rsi, 78
imul rdx, rax, 25
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
add cl, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
or rbx, rdx
setb sil
sbb ecx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
sub ecx, ebx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
