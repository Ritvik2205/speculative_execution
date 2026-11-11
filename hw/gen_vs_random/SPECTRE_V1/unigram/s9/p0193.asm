.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, -17837
cmp al, dil
cwd
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
sbb bl, al
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 5
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ebx
and rdx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdx]
sets bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor dl, 71
bt rcx, rcx
add al, -25 # instrumentation
sbb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
