.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rcx, rsi
cmp al, 53
xor rdi, rdx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
xor cl, cl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
setp bl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 38
sub al, sil
xor cl, al
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
