.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdx, rax
and al, bl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
cmp cl, al
sub ax, 19828
add sil, -111
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
add ecx, 63
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
lea bx, qword ptr [rdx + rbx]
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
setp sil
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
