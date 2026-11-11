.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edx, 56
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
lea rdi, qword ptr [rdx]
movsx rsi, di
add bl, 104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
mov al, dl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], dx
xor bl, -5
test bl, bl
setl bl
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 41
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
