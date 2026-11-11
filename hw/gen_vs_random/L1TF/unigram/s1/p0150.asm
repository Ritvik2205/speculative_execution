.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -80
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
test bl, bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 74
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
neg dl
jmp .bb_0.1
.bb_0.1:
sub al, bl
cmovb ax, bx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
cmovp cx, dx
or dl, sil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
