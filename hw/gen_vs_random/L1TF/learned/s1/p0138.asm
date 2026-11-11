.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, bl
cmovb ax, cx
btc si, dx
and rcx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rcx]
setnbe bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
neg ax
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
sbb dx, di
lea si, qword ptr [rdx + rbx + 59]
sub cl, cl
xor bl, cl
cmp al, dil
jmp .bb_0.1
.bb_0.1:
btc rdx, 28
not dl
bt rcx, rdx
setp dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
